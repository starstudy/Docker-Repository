FROM maven:3.5-jdk-8-alpine

ENV TOMCAT_PATH=/usr/local \
    DISTRO_NAME=/etc/localtime \
    TOMCATSERVER_NAME=dubbo-admin

RUN set -ex;

LABEL Author="eason <eason2star@gmail.com>"
WORKDIR /src

FROM tomcat:9-jre8
WORKDIR /usr/local/tomcat/webapps
RUN rm -rf ROOT
ADD dubbo-admin-2.5.4.war .
RUN mv dubbo-admin-2.5.4.war ROOT.war
RUN unzip ROOT.war -d ROOT


COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
