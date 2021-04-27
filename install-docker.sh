#!/bin/bash

set -e

# uninstall already installed old docker versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# set up the stable docker repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index, and install the latest version of Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# create the docker group and add your user
sudo groupadd docker
sudo usermod -aG docker $USER

# configure Docker to start on boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Download the current stable release of Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose


exit 0