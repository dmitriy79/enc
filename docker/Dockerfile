FROM debian:stretch
LABEL maintainer="Encocoin Developers <dev@encocoin.org>"
LABEL description="Dockerised EncocoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
