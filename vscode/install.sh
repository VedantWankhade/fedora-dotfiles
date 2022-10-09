#!/bin/bash

echo "Adding vscode repo"
echo "Check https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions for more info"

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

echo "Installing vscode"

dnf check-update
sudo dnf install code

echo "Open vsocde and turn sync on to get all the custom configurations"
