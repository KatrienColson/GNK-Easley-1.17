#/bin/bash

# Update to start
sudo apt update -y
sudo apt -o Dpkg::options::='--force-confold' --force-yes -fuy dist-upgrade

# Install VS Code
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update -y
sudo apt install code

# Get and install the latest chrome version
sudo apt update-y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Finalize and update / upgrade the pc
sudo apt autoremove -y && sudo apt autoclean -y
sudo rm /etc/apt/sources.list.d/vscode.list
sudo rm /etc/apt/sources.list.d/google-chrome.list
echo Your PC is all set up and ready !



