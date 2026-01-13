#!/bin/bash

apt-get update
apt-get upgrade -y

apt install -y openjdk-11-jdk tomcat9

groupadd tomcat9

sudo useradd -s /bin/false -g tomcat9 -d /etc/tomcat9 tomcat9

sudo service tomcat9 start

sudo cp /vagrant/config/tomcat-users.xml /etc/tomcat9