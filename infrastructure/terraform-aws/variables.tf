# Environment variables (without 'TF_VAR_' prefix).
variable "INITIAL_PROVISIONING_PUBLIC_KEY" {
  type = string
}
variable "DEPLOY_PRIVATE_KEY_FILE" {
  type    = string
  default = "~/.ssh/id_rsa"
}
variable "DEPLOY_ALLOW_SSH_ACCESS_CIDR" {
  type    = string
  default = "0.0.0.0/0"
}
