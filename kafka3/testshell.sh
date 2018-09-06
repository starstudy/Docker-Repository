#!/bin/bash

set -e

if [[ -z $ZOO_SERVERS ]]
then
  ZOO_SERVERS='zk:2181'
fi

if [[ -z $BROKER_ID ]]
then
  BROKER_ID='0'
fi



#sed -i r 's/"{BROKER_ID}"/"${BROKER_ID}"/g' server.properties
#cat ./server.properties
sed -i -r "s#^broker.id=.*#broker.id=${BROKER_ID}#g"  ./server.properties
sed -i -r "s#^zookeeper.connect=.*#zookeeper.connect=${ZOO_SERVERS}#g"  ./server.properties