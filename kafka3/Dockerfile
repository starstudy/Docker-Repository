##
# docker build . -t registry.docker.yit.com/infrastructure/kafka:1.1.0

FROM java:8

MAINTAINER nick

ARG kafka_version=1.1.0
ARG scala_version=2.11

WORKDIR /tmp
COPY ./kafka_2.11-1.1.0.tgz ./
RUN tar -xzf kafka_$scala_version-$kafka_version.tgz \
 && mv kafka_$scala_version-$kafka_version /kafka \
 && rm -rf /tmp/*

EXPOSE 9092
WORKDIR /kafka
ADD server.properties ./config/server.properties

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

ENV PATH=/kafka/bin:${PATH}
CMD ["/kafka/bin/kafka-server-start.sh", "/kafka/config/server.properties"]
