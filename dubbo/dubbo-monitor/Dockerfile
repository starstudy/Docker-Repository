FROM tomcat:java-8

MAINTAINER eason2star@gmail.com

ENV WORKING_DIR /opt
ENV DUBBO_ASSEMBLY_NAME dubbo-monitor-simple-2.5.4-SNAPSHOT
ENV TIME_ZONE=Asia/Shanghai
RUN rm -rf /etc/localtime \
    && ln -s /usr/share/zoneinfo/$TIME_ZONE /etc/localtime \
    && echo $TIME_ZONE | tee /etc/timezone \
    && yum -y install net-tools

COPY ${DUBBO_ASSEMBLY_NAME}-assembly.tar.gz /opt
COPY scripts/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR ${WORKING_DIR}

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]