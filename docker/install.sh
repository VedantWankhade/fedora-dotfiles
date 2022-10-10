#!/bin/bash

echo "Setting up docker repository"

sudo dnf -y install dnf-plugins-core

sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

echo "Installing docker engine"
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "Enable and start docker service"
sudo systemctl start docker
sudo systemctl enable docker

echo "Adding current user in docker group"
sudo usermod -aG docker $USER

echo "Pulling docker desktop rpm"
curl https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-x86_64.rpm?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64 --output ~/Downloads/docker-desktop.rpm

echo "Installing docker desktop"
sudo dnf install ~/Downloads/docker-desktop.rpm

echo "Please relogin for the installation to take effect"

