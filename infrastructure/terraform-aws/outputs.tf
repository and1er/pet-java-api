  
output "INITIAL_PROVISIONING_PUBLIC_KEY" {
  description = "A public SSH key value for initial instance setup"
  value = var.INITIAL_PROVISIONING_PUBLIC_KEY
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

output "app_host_eip_address" {
  value = aws_eip.app_host_ip
}

output "app_host_public_ip_address" {
  value = aws_instance.app_host.public_ip
  description = "The public IP address of the app_host instance."
}
