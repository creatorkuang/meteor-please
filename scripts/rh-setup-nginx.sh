#!/bin/bash

# install nginx
sudo mkdir -p /etc/nginx
sudo yum install -y nginx
sudo mkdir /etc/nginx/sites-enabled
# nginx daemon
sudo chkconfig --level 3 nginx on
sudo service nginx start
