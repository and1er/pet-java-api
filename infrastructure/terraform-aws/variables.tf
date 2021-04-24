# Environment variables (without 'TF_VAR_' prefix).
variable "DEPLOY_PUBLIC_KEY" {
  type = string
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
