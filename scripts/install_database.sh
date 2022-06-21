#!/bin/bash

./usr/share/tomcat/run4MS.sh

sudo apt update

sudo apt install -y postgresql postgresql-contrib

sudo systemctl start postgresql.service
