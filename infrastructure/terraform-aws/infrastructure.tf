# region and creds are set in Terraform Cloud.
provider "aws" {}

# --- Security groups ---
resource "aws_security_group" "webserver_group" {
  name = "Webserver security group"
  description = "Basic security rules for webservers."

  dynamic "ingress" {
    for_each = ["80", "443"]
    content {
      description = "Incoming webserver tcp connections."
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  ingress {
    description = "Incoming SSH connections"
    cidr_blocks = [var.DEPLOY_ALLOW_SSH_ACCESS_CIDR]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }

  egress {
    description = "Allow all output traffic"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
}

# --- Instances ---

# Lookup for latest OS image AMIs for any region.
# Ubuntu 20.04 Focal.
# Tested on "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20201210"
data "aws_ami" "latest_ubuntu_focal" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}


# Static IP-address.
resource "aws_eip" "app_host_ip" {
  instance = aws_instance.app_host.id
  tags = {
    "AppName" = "pet_java_api"
  }
}

# SSH access key.
resource "aws_key_pair" "ssh_access_key" {
  key_name = "host-ssh-access-key"
  public_key = var.INITIAL_PROVISIONING_PUBLIC_KEY
}


# Launch an instance.
resource "aws_instance" "app_host" {
  ami = data.aws_ami.latest_ubuntu_focal.id
  instance_type = "t3.micro"
  key_name = "host-ssh-access-key"
  vpc_security_group_ids = [
    aws_security_group.webserver_group.id
  ]
  metadata_options {
    http_tokens = "required"
  }
  tags = {
    "Name" = "Application host"
    "Role" = "app-host"
    "AppName" = "pet_java_api"
  }
}

# Generate Ansible inventory file.
data "template_file" "ansible_inventory_content" {
  template = file("./templates/inventory.ini.tpl")
  vars = {
    # Hosts.
    app_host = aws_instance.app_host.public_ip
    # Parameters
    ssh_private_key_file = var.DEPLOY_PRIVATE_KEY_FILE
    ubuntu_ssh_user = var.ansible_inventory_ubuntu_ssh_user
    ubuntu_python_interpreter = var.ansible_inventory_ubuntu_python_interpreter
  }
}
resource "local_file" "ansible_inventory_file" {
  content = data.template_file.ansible_inventory_content.rendered
  filename = var.ansible_inventory_file_path
}
