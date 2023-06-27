#!/usr/bin/env sh

sudo sh -c "yum -y update && yum -y install git docker"
sudo newgrp docker &
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker.service

DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

ssh-keyscan github.com >> ~/.ssh/known_hosts
git clone git@github.com:ElixirProtocol/elixir-infrastructure.git
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 373989144551.dkr.ecr.ap-northeast-1.amazonaws.com
