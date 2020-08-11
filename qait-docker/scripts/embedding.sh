#!/usr/bin/env bash

export "LC_ALL=C"

cp embedding2h5.py /fasttext/embedding2h5.py
cd /fasttext

echo "Starting embedding now..."
python embedding2h5.py
echo "Embedding finished!"