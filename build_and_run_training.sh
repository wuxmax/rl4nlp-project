#!/usr/bin/env bash

export DOCKER_BUILDKIT=1
docker build -t qait-img qait-docker

CONTAINER_NAME=$USER-$(uuidgen)
docker run -dt --rm --name $CONTAINER_NAME --gpus all -p 8097:8097 \
    -v $(pwd)/fasttext/crawl-300d-2M.vec.h5:/app/crawl-300d-2M.vec.h5 \
    -v $(pwd)/output:/output \
    qait-img scripts/training.sh
docker logs -f $CONTAINER_NAME
# docker exec -it $CONTAINER_NAME scripts/training.sh