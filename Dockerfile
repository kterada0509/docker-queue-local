FROM java:8

RUN set -x \
    && curl https://bootstrap.pypa.io/get-pip.py | python \
    && pip install awscli

ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.12.1.jar /
ENTRYPOINT ["/usr/bin/java", "-jar", "/elasticmq-server-0.12.1.jar"]

EXPOSE 9324

CMD ["-help"]
