#!/bin/bash

docker build -t docker_state_exporter_test .
CONTAINER_ID=$(docker create docker_state_exporter_test)
docker cp $CONTAINER_ID:/go/bin/docker_state_exporter .
docker rm $CONTAINER_ID
