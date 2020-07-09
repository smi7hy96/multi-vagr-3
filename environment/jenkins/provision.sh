#!/bin/bash

sudo apt-get update -y

#JAVA
sudo apt update
sudo apt search openjdk
sudo apt install openjdk-8-jdk

#JENKINS
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins


sudo systemctl start jenkins
