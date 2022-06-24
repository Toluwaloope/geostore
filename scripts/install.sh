#!/bin/bash

cd /usr/share/tomcat/webapps
sudo java -jar *.jar > /dev/null 2> /dev/null < /dev/null &
