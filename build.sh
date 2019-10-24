#!/bin/bash -eux

docker build -f Dockerfile -t avarf/ubuntu-basic .
docker push avarf/ubuntu-basic:latest