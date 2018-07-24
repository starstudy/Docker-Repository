#!/bin/bash
#停止集群
docker-compose stop

#删除相关容器和网络
docker-compose down --volumes

echo "zookeeper cluster stoped."
