#!/bin/bash

# Congfigure Ansible
export ANSIBLE_CONFIG=ansible.cfg

#  Install Common APT Packages
ansible-playbook playbooks/install_common.yml

# Clone App Repository
ansible-playbook playbooks/clone_repo.yml 

# Setup and Deploy Postgresql Database
ansible-playbook playbooks/setup_postgresql.yml

# Install Node.js via NVM
ansible-playbook playbooks/install_node.yml

# Start and Deploy app via systemd configuration
ansible-playbook playbooks/deploy_app.yml

# Install Nginx
ansible-playbook playbooks/install_nginx.yml

# Configure Nginx app
ansible-playbook playbooks/conf_nginx.yml