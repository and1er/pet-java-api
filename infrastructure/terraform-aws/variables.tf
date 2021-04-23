# # AWS Environment variables (to pass to Terraform Cloud)
# variable "aws_access_key" {
#   type = string
# }
# variable "aws_secret_key" {
#   type = string
# }
# variable "aws_default_region" {
#   type = string
# }

# Environment variables (without 'TF_VAR_' prefix).
variable "DEPLOY_PUBLIC_KEY" {
  type = string
  default = "~/.ssh/id_rsa.pub"
}
variable "DEPLOY_PRIVATE_KEY_FILE" {
  type = string
  default = "~/.ssh/id_rsa"
}
variable "DEPLOY_ALLOW_SSH_ACCESS_CIDR" {
  type = string
  default = "0.0.0.0/0"
}

# Local variables.
variable "ansible_inventory_file_path" {
  type = string
  default = "./inventory.ini"
}
variable "ansible_inventory_ubuntu_ssh_user" {
  type = string
  default = "ubuntu"
}
variable "ansible_inventory_ubuntu_python_interpreter" {
  type = string
  default = "/usr/bin/python3"
}
