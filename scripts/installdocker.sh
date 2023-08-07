#!/bin/bash -ex
#Required packages 
sudo yum install -y device-mapper-persistent-data lvm2
#Install Docker
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
# Installing Most recent Version
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin  

sudo systemctl start docker
sudo systemctl enable docker

sudo docker version

# Docker Automatically creates a group make sure to add user to the docker group
sudo usermod -a -G docker cloud_user

# Test Installation - use docker run command
docker run hello-world