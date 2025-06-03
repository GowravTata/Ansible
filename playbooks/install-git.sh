# The command used to run the playbook are as follows
ansible-playbook --ask-become-pass playbook.yml

#  Ad-hoc command to check if git is present in Managed Nodes
ansible all -m shell -a "git --version"