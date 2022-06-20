#!/bin/bash

cp /tmp/* /opt/tomcat/webapps/

./opt/tomcat/bin/startup.sh

rm -rf /opt/tomcat/webapps/*