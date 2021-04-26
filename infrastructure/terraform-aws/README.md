# Terraform AWS

Using [Terraform Cloud](https://app.terraform.io/).

## Variables

Variables to set there as **Environment Variables** (These variables are set in Terraform's shell environment using `export`)

| Variable | Description | Example |
| ------ | ------ | ------ |
| **AWS_DEFAULT_REGION** | *A region to create an EC2-instance* | `us-east-1`
| **AWS_ACCESS_KEY_ID** | *AWS IAM access key* | `XXXXXXXXXXXXXXXX`
| **AWS_SECRET_ACCESS_KEY** | *AWS IAM secret access key* | `YYYYYYYYYYYYYYYY`
| **TF_VAR_INITIAL_PROVISIONING_PUBLIC_KEY** | *A public key to connect to a created EC2-instance for initial provisioning* |`ssh-rsa XXXX <comment>`

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
