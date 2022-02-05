#!/bin/bash

#reset current changes and pull new changes from repo
cd /opt/floppy-bird-clone
git reset --hard origin/main
git pull

#copy Dockerfile for building
cp instructions/Dockerfile .
docker build -t floppybird:1 .

#deploy changes
docker rm -f floppy

docker run \
-dit \
--name floppy \
-p 5000:80 \
floppybird:1

