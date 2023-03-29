#!/bin/bash
yum update -y
yum install -y ruby

# Install Docker
amazon-linux-extras install docker -y
service docker start
systemctl enable docker
usermod -a -G docker ec2-user
chmod 666 /var/run/docker.sock

# Install Docker Compose
curl -L https://github.com/docker/compose/rel... -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Install code deploy agent
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
./install auto
