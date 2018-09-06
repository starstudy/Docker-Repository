FROM maven
MAINTAINER reference

WORKDIR /opt

# Environment variables
ENV TOMCAT_VERSION 8.0.33
#ENV DISCONF_REPO https://github.com/knightliao/disconf
ENV ONLINE_CONFIG_PATH /disconf/conf
ENV WAR_ROOT_PATH /disconf/war

COPY ./conf/ "${ONLINE_CONFIG_PATH}/"

# Add required jars into a extra libarary directory
#RUN git clone ${DISCONF_REPO} && cd disconf/disconf-web && sh deploy/deploy.sh && cd -
COPY ./war/disconf-web.war "${WAR_ROOT_PATH}/"
RUN  jar xvf "${WAR_ROOT_PATH}/disconf-web.war" && rm -rf "${WAR_ROOT_PATH}/disconf-web.war"

#RUN wget http://mirrors.aliyun.com/apache/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && tar xvzf apache-tomcat-${TOMCAT_VERSION}.tar.gz && rm -rf apache-tomcat-${TOMCAT_VERSION}.tar.gz
COPY ./tomcat/apache-tomcat-${TOMCAT_VERSION}.tar.gz /opt
RUN tar xvzf apache-tomcat-${TOMCAT_VERSION}.tar.gz && rm -rf apache-tomcat-${TOMCAT_VERSION}.tar.gz
COPY ./conf/server.xml /opt/apache-tomcat-${TOMCAT_VERSION}/conf/server.xml

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD /opt/apache-tomcat-${TOMCAT_VERSION}/bin/catalina.sh run




