#!/usr/bin/env bash

docker rm -f $(docker ps -a -q --filter ancestor=qait-img)