#!/bin/bash

cp $DEPLOYDIR/*.war /usr/share/tomcat/webapps/

cd $TOMCATWEBDIR/geostore/

./$DEPLOYDIR/run4MS.sh

sudo yum update -y

sudo yum install -y postgresql postgresql-contrib

sudo systemctl start postgresql

./usr/share/tomcat/webapps/create_database.sh
