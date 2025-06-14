#!/bin/bash

set -e

echo "ec2-user:MyPassword" | sudo chpasswd

# Backup SSH config in case if any of this process fails
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

# Allow password authentication
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/^#PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Restart sshd service
sudo systemctl restart sshd

# Print the message that Process is complete
echo "Password for ec2-user has been set and sshd restarted."

