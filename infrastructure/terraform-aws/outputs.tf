  
output "DEPLOY_public_key" {
  description = "A path to SSH public key file"
  value = var.DEPLOY_PUBLIC_KEY
}

output "DEPLOY_ALLOW_SSH_ACCESS_cidr" {
  description = "For security group rule"
  value = var.DEPLOY_ALLOW_SSH_ACCESS_CIDR
}

output "latest_ubuntu_focal_ami_id" {
  value = data.aws_ami.latest_ubuntu_focal.id
}

output "latest_ubuntu_focal_ami_name" {
  value = data.aws_ami.latest_ubuntu_focal.name
}

output "ansible_inventory_file_path" {
  value = var.ansible_inventory_file_path
}

output "ansible_inventory_file_content" {
  value = data.template_file.ansible_inventory_content.rendered
}
