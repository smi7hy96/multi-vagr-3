#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs -y

sudo rm /etc/nginx/sites-available/default
sudo cp /home/ubuntu/environment/app/default.conf /etc/nginx/sites-available/default

sudo service nginx restart
# npm install and start
#echo 'export DB_HOST=mongodb://192.168.10.200:27017/posts' >> ~/.bashrc
#echo 'export DB_HOST=mongodb://priv:27017/posts' >> ~/.bashrc

sudo npm install


cd /home/ubuntu/app
# install pm2
sudo npm install pm2 -g
sudo npm install forever -g
sudo forever start app.js
