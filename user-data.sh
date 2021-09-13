#! /bin/bash

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

sudo amazon-linux-extras enable nginx1
sudo yum clean metadata
sudo yum install -y nginx

sudo systemctl enable nginx.service
sudo systemctl start nginx.service
