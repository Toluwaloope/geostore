#!/bin/bash

unzip *.zip -d /usr/share/tomcat/webapps/

./usr/share/tomcat/webapps/run4MS.sh

sudo yum update -y

sudo yum install -y postgresql postgresql-contrib

sudo systemctl start postgresql.service

./usr/share/tomcat/webapps/create_database.sh
