#!/bin/bash
# Update the package index
sudo yum update -y x
sudo yum install -y ruby wget

# Install Docker
sudo yum -y install docker
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
sudo chmod 666 /var/run/docker.sock

# Pull the Docker image from Docker Hub
sudo docker pull givencingco/python:latest

# Stop and remove any existing container
sudo docker stop your-container-name || true
sudo docker rm your-container-name || true

# Run the new container
sudo docker run -d --name python-app -p 80:5000 givencingco/python:latest
