#!/usr/bin/env bash

export "LC_ALL=C"

tmux new-session -d -s "visdom" visdom

echo "Using configuration [ $1 ]"
cp configs/"$1".yaml config.yaml
python train.py ./