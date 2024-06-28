#!/bin/bash

cat << 'EOF' | sudo tee /etc/needrestart/conf.d/no-prompt.conf
$nrconf{restart} = 'a';
EOF
sudo apt remove unattended-upgrades -y

sudo apt update -y
sudo apt upgrade -y
sudo apt install mosh -y

cat << 'EOF' | sudo tee -a /etc/vmware-tools/tools.conf
[deployPkg]
enable-custom-scripts = true
EOF

sleep 10
echo "Update Complete!"
sudo shutdown -r now
