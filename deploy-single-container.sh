#!/bin/bash

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker image rm -f $(docker images -a -q)
