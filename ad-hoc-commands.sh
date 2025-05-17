# This script demonstrates how to use Ansible ad-hoc commands to perform various tasks on remote servers.
#
# #  This command will ping all hosts in the inventory file using the SSH key located at ~/.ssh/ansible.
ansible all --key-file ~/.ssh/ansible -i inventory -m ping
#
# # This ccommand will echo a message "Hello World" on all hosts in the inventory file using the SSH key located at ~/.ssh/ansible.
ansible all --key-file ~/.ssh/ansible -i inventory -m shell -a 'echo "Hello World"'
ansible all --key-file ~/.ssh/ansible -i inventory -m shell -a 'echo "Hello World" > /home/ec2-user/hello.txt'

# After setting up the Ansible CFG File the following command can be used to ping all the hosts
# First command is shortened to this to ping all the server
ansible all -m ping

# To list all the hosts in the ansible
ansible all --list-hosts

# To gather facts
ansible all -m gather_facts


#
ansible all -m yum -a update_cache=true --become --ask-become-pass

# Command to copy the SSH key to the remote server
ssh-copy-id -i ~/.ssh/id_ed25519.pub server_name


#  This command will update the package cache oon all hosts like apt update 
ansible all -m apt -a update_cache=true --become --ask-become-pass

# Command to install nginx package on all hosts
ansible all -m yum -a name=nginx --become --ask-become-pass