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
