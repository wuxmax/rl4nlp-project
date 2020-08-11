#!/usr/bin/env bash

build.sh

CONTAINER_NAME=$USER-$(uuidgen)
docker run -dt --rm --name $CONTAINER_NAME --gpus all -v $(pwd)/fasttext/:/fasttext qait-img scripts/embedding.sh
docker logs -f $CONTAINER_NAME