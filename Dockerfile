FROM java:8

RUN set -x \
    && curl https://bootstrap.pypa.io/get-pip.py | python \
    && pip install awscli

ENV ELASTICMQ_SERVER_VERSION=0.13.8

ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-${ELASTICMQ_SERVER_VERSION}.jar /elasticmq-server.jar
ENTRYPOINT ["/usr/bin/java", "-jar", "/elasticmq-server.jar"]

EXPOSE 9324

CMD ["-help"]
