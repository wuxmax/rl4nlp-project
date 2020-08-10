#!/usr/bin/env bash

export DOCKER_BUILDKIT=1
docker build -t qait-img qait-docker

CONTAINER_NAME=$USER-$(uuidgen)
docker run -dt --rm --name $CONTAINER_NAME -v $(pwd)/fasttext/crawl-300d-2M.vec.h5:/app/crawl-300d-2M.vec.h5 qait-img
# docker logs -f $CONTAINER_NAME
docker exec -it $CONTAINER_NAME scripts/training.sh