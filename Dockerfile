FROM ubuntu:16.04

MAINTAINER Vladyslav Aleksakhin <vladyslav.aleksakhin@hitta.se>

RUN apt-get update \
    && apt-get install -y openjdk-8-jre python \
    && rm -rf /var/lib/apt/lists/*

ENV PLAY_HOME=/opt/play-1.2.3
ENV PATH $PATH:$PLAY_HOME

ADD . $PLAY_HOME/

WORKDIR /data

CMD ["play"]