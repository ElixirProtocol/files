#!/usr/bin/env sh

sudo sh -c "yum -y update && yum -y install git docker"
sudo newgrp docker &
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker.service

DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

echo ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG2cHqNRWIf7pGOKnpLWThmNihrF00+m8nSmlNtKixvF sam@elixir.finance >> ~/.ssh/authorized_keys

echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDaom4GSHI0Cdz7fnmPSyjJ3wV91j/zOGoyxB1X/dREeSmkQ+vywWwciBU6babHXJEXD8RmlaY7Mm0hc74uVPJUgFXO0GePbKWAIkg3JJiHP0IN3NN224BWPkx2zfB9SnkvAZJ3MUm3jSWRjxhhWhy5rhNc153iPskmzR0SoFNk4+aXKA0gmuzKVvaJrXWHDM4ZnR0m/35c4dHF9fcdnrf3K99efmATGJLEQaa4N2OLlCz25TWORSbakBUIoxiMlSojeVMDB7wGXFla2h1XnpEGFolTiFqbl3gBzbtmvyn4dPe3Ti7W6rPsf6i+yYHn1k4M7nhBIrOSL6kEv1eBDHFKN+k7sPtbK2WtXTM0+LH//wqG37lddrJ2gC5yYA2taogWX1lpGq6/uiLuQrYuI4ePWPEeZxcB/0PSvKUTvOF7dX43isg0bQoTVnK9UhqJp93jehYD5bRp9vz1oZIjfk+nZZku/M6IUw1qyLfVVvTtAa5QY2XJqpF547SQ2tTV338IJrPWnnPm/MlAtilT4ZNzrfneWx9cjt5aVIXu/uZRx8QMv57WNPO3qBFxgaEzedLhLcH2kOhIFfhcHQ4Jdd42KVEtMTDMqwe2FSVjZcDyeW/hOJtHuHxmtyrv47SA6xZUwB7zF1hb9q8MJVSMBEqtEYb57/m9cisN7IMyXFM3Ew== mpereiraesaa@gmail.com >> ~/.ssh/authorized_keys

