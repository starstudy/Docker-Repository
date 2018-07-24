#!/bin/bash

set -e

if [[ -z $ZOO_SERVERS ]]
then
  ZOO_SERVERS='zk:2181'
fi

if [[ -z $ROOT_PASSWD ]]
then
  ROOT_PASSWD='123456'
fi

sed -i -r "s%([0-9]+\.){3}[0-9]+\:[0-9]+%${ZOO_SERVERS}%g" /usr/local/tomcat/webapps/ROOT/WEB-INF/dubbo.properties

cd /usr/local/tomcat/bin

sh catalina.sh run