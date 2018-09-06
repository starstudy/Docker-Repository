#!/bin/bash

set -e

if [[ -z $ZOO_SERVERS ]]
then
  ZOO_SERVERS='zk:2181'
fi

if [[ -z $MYSQL_DISCONF_PASSWORD ]]
then
  $MYSQL_DISCONF_PASSWORD='123456'
fi

# replace zoo_servers address
sed -i -r "s#^hosts=.*#hosts=${ZOO_SERVERS}#g"  ${WAR_ROOT_PATH}/zoo.properties
sed -i -r "s#^jdbc.db_0.password=.*#jdbc.db_0.password=${MYSQL_DISCONF_PASSWORD}#g"  ${WAR_ROOT_PATH}/jdbc-mysql.properties
sed -i -r "s#^redis.group1.client1.host=.*#redis.group1.client1.host=${REDIS_HOST_NAME}#g"  ${WAR_ROOT_PATH}/redis-config.properties

exec "$@"