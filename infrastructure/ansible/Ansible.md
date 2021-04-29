# Ansible Notes

## Requirements

* AWS IAM credentials

    ```bash
    export AWS_ACCESS_KEY_ID="XXXX"
    export AWS_SECRET_ACCESS_KEY="YYYYY"
    
    # Optional. Default value is "~/.ssh/id_rsa"
    export PJA_ANSIBLE_SSH_PRIVATE_KEY_FILE="$HOME/.ssh/id_rsa"
    ```

* Ansible v3+, boto3 package.

    ```bash
    pip install -r pip-requirements.txt
    ```

* Install Ansible role and collection requirements

    ```bash
    ansible-galaxy role install -r requirements.yml
    ansible-galaxy collection install -r requirements.yml
    ```

## Local Runs

Inventory host check

```bash
ansible-inventory -i dynamic-inventory.aws_ec2.yml --graph
```

Ad-hoc commands

```bash
ansible -i dynamic-inventory.aws_ec2.yml tag_AppName_pet_java_api -m ping
```

Playbook runs

```bash
ansible-playbook -i dynamic-inventory.aws_ec2.yml deploy-playbook.yml 
```
