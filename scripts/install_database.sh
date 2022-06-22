#!/bin/bash

unzip *.zip

./usr/share/tomcat/run4MS.sh

sudo yum update

sudo yum install -y postgresql postgresql-contrib

sudo systemctl start postgresql.service

./usr/share/tomcat/create_database.sh
