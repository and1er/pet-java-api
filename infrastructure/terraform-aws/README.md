# Terraform AWS

## GitHub Actions Secrets

| Variable | Description | Example |
| ------ | ------ | ------ |
| **TF_API_TOKEN** | *A token for Terraform Cloud auth* | `XXXXXXXXX`

## Terraform Cloud Variables

Using [Terraform Cloud](https://app.terraform.io/).

Variables to set there as **Environment Variables** (These variables are set in Terraform's shell environment using `export`).

Mandatory

| Variable | Description | Example |
| ------ | ------ | ------ |
| **AWS_DEFAULT_REGION** | *A region to create an EC2-instance* | `us-east-1`
| **AWS_ACCESS_KEY_ID** | *AWS IAM access key* | `XXXXXXXXXXXXXXXX`
| **AWS_SECRET_ACCESS_KEY** | *AWS IAM secret access key* | `YYYYYYYYYYYYYYYY`
| **TF_VAR_INITIAL_PROVISIONING_PUBLIC_KEY** | *A public key to connect to a created EC2-instance for initial provisioning* |`ssh-rsa XXXX <comment>`

Optional (with defaults)

| Variable | Description | Default Value |
| ------ | ------ | ------ |
| TF_VAR_DEPLOY_ALLOW_SSH_ACCESS_CIDR | *A CIDR for incoming SSH connections* | `0.0.0.0/0`
| TF_VAR_DEPLOY_PRIVATE_KEY_FILE | *A path to private SSH key file* | `$HOME/.ssh/id_rsa`
| ANSIBLE_HOST_KEY_CHECKING | *Disable host key verification* | `False`


## Commands

```bash
cd infrastructure/terraform-aws/

# cp secrets.sh.example secrets.sh

# source secrets.sh

terraform login
terraform init
terraform plan
terraform apply

terraform destroy
```
