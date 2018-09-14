FROM openjdk:alpine

LABEL maintainer="kterada.0509sg@gmail.com"

ENV ELASTICMQ_SERVER_VERSION=0.14.5
EXPOSE 9324

ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-${ELASTICMQ_SERVER_VERSION}.jar /elasticmq-server.jar

ENTRYPOINT ["/usr/bin/java", "-jar", "/elasticmq-server.jar"]