#!/usr/bin/env bash

ALWAYS_BUILD=1
if [[ "$ALWAYS_BUILD" == 1 ]]; then
    ./build.sh
fi

CONFIG="default"
if [[ -n "$1" ]]; then
    CONFIG="$1"
fi

CONTAINER_NAME=$USER-$(uuidgen)
docker run -dt --rm --name $CONTAINER_NAME --gpus all -p 8097:8097 \
    -v $(pwd)/fasttext/crawl-300d-2M.vec.h5:/app/crawl-300d-2M.vec.h5 \
    -v $(pwd)/output:/output \
    qait-img scripts/train_and_eval.sh $CONFIG
docker logs -f $CONTAINER_NAME
