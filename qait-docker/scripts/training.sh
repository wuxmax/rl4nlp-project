#!/usr/bin/env bash

export "LC_ALL=C"

tmux new-session -d -s "visdom" visdom
python train.py ./