#!/usr/bin/env bash

export "LC_ALL=C"

tmux new-session -d -s "visdom" visdom

echo "==> Using configuration [ $1 ] "

### Training
cp configs/"$1_train".yaml config.yaml
echo "====> Training... "
python train.py ./
echo "====> Finished training! "

### Evaluation
cp configs/"$1_eval".yaml config.yaml
echo "====> Evaluating... "
python train.py ./
echo "====> Finished evaluation! "
