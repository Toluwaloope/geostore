#!/bin/bash

sudo apt-get update
sudo apt install -y default–jdk
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
cd /tmp
wget http://apache.cbox.biz/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
wget https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.sha512
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-9.0.14.tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r conf
sudo chown -R tomcat webapps/ work/ temp/ logs/
sudo chmod g+x conf