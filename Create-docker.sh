#!/bin/bash

#Installing Jxplorer
apt-get update
apt-get install jxplorer -y

# Installing Docker
apt-get update
apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update -y
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Installing Docker-Compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

if [ "$(systemctl is-active docker)" != "active" ]; then
    echo "Something went wrong with the installation"
    exit 1
fi

#Creates directory structure
mkdir /home/openldap

#Creates Docker-compose file
curl https://raw.githubusercontent.com/A-brandting/openldap/main/docker-compose.yml > /home/openldap/docker-compose.yml

cd /home/openldap
docker-compose up -d
