# 启动信息
集成了zookeeper和dubbo-admin

## 启动
docker-compose up -d  --no-recreate

## 终止
### 停止
docker-compose stop

### 删除相关容器和网络
docker-compose down --volumes

https://github.com/apache/incubator-dubbo-ops/tree/master/dubbo-admin/src/main