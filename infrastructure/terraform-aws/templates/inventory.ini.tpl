[app_hosts]
app ansible_host=${app_host}

[app_hosts:vars]
ansible_ssh_private_key_file = ${ssh_private_key_file}
ansible_ssh_user = ${ubuntu_ssh_user}
ansible_python_interpreter = ${ubuntu_python_interpreter}
