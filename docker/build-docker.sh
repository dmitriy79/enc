#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-encocoinpay/encocoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/encocoind docker/bin/
cp $BUILD_DIR/src/encocoin-cli docker/bin/
cp $BUILD_DIR/src/encocoin-tx docker/bin/
strip docker/bin/encocoind
strip docker/bin/encocoin-cli
strip docker/bin/encocoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
