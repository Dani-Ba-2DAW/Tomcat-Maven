#!/bin/bash

apt-get update
apt-get upgrade -y

apt install -y git openjdk-11-jdk tomcat9 tomcat9-admin maven

groupadd tomcat9

useradd -s /bin/false -g tomcat9 -d /etc/tomcat9 tomcat9

service tomcat9 start

cp /vagrant/config/tomcat-users.xml /etc/tomcat9
cp /vagrant/config/settings.xml /etc/maven

mvn archetype:generate -DgroupId=com.ddm -DartifactId=ddm-test -Ddeployment -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=fa
cd ddm-test
cp /vagrant/config/pomtest.xml pom.xml
mvn tomcat7:deploy
cd ..
git clone https://github.com/cameronmcnz/rock-paper-scissors.git

service tomcat9 restart