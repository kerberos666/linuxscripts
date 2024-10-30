#!/usr/bin/env bash

clear
echo "
 _                   ___                        
| \ _  _  |  _  __    | __  _ _|_ _  |  |  _  __
|_/(_)(_  |<(/_ |    _|_| |_>  |_(_| |  | (/_ | 

Debian Based Distros.             By Rafael v1.1 

https://ethical-hacker.net
Author: Rafael Maita
Twitter: @redyseguridad
Version: 1.1

Instalador de Docker y docker-compose para Distribuciones de Linux basadas en Debian.
--------------------------------------------------------------------------------------
Docker and docker-compose installer for Debian-based Linux distributions.
"
read -n 1 -s -r -p "Press any key to continue the setup..."

echo " "
cd ~/
apt update
apt install -y wget vim vim-python-jedi curl git python3-pip

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list
apt update
apt remove -P -y docker docker-engine docker.io
apt install -y docker-ce

echo "Installing Updating the Latest Docker-Compose version!"
# Obtener la última versión
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "
Docker and docker-compose are installed.!
"
