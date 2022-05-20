# Provision infrastructure on AWS Cloud

## Prerequisites

To follow this tutorial you will need:

1. The [Python](https://www.python.org/downloads/)
2. The [pip](https://pip.pypa.io/en/stable/installation/)
3. The [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
4. Setup SSH connection by adding your public key [Follow Guide Here](https://linuxhandbook.com/add-ssh-public-key-to-server/)

## Update Target Host

1. Replace <TARGET_HOST_IP> and <TARGET_HOST_USER> with your requirements in `inventory` file.

    ```!/bin/bash
    umami_app ansible_ssh_host=<TARGET_HOST_IP> ansible_user=<TARGET_HOST_USER>
    ```

2. Replace <TARGET_HOST_IP> and <TARGET_HOST_USER> with your requirements in `playbooks/vars/main.yml` file.

    ```!/bin/bash
    app_user: <TARGET_HOST_USER>
    ```

## Configure and Deploy Application

1. Make your `deploy.sh` script executable first.

    ```!/bin/bash
    chmod +x deploy.sh
    ```

2. Deploy your Application by running `deploy.sh` script.

    ```!/bin/bash
    . deploy.sh
    ```
