#!/usr/bin/env bash

export DOCKER_BUILDKIT=1
docker build -t qait-img qait-docker

CONTAINER_NAME=$USER-$(uuidgen)
# docker run -it --rm --name $CONTAINER_NAME -v $(pwd)/fasttext/:/fasttext qait-img
docker run -dt --rm --name $CONTAINER_NAME -v $(pwd)/fasttext/:/fasttext qait-img scripts/embedding.sh
docker logs -f $CONTAINER_NAME