#!/usr/bin/env bash

mkdir -p fasttext
wget -nc -O fasttext/crawl-300d-2M.vec.zip https://dl.fbaipublicfiles.com/fasttext/vectors-english/crawl-300d-2M.vec.zip
unzip fasttext/crawl-300d-2M.vec.zip -d fasttext

