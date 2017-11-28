FROM javister-docker-docker.bintray.io/javister/javister-docker-base:1.0
MAINTAINER Viktor Verbitsky <vektory79@gmail.com>

LABEL \
    python.version=3.4

COPY files /

ENV BASE_RPMLIST="$BASE_RPMLIST python34 python34-pip"

RUN . /usr/local/bin/yum-proxy && \
    yum-install && \
    echo '*** Clean up yum caches' && \
    yum-clean && \
    chmod --recursive +x /etc/my_init.d/*.sh /etc/service /usr/local/bin/*
