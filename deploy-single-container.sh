#!/bin/bash

sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker image rm -f $(sudo docker images -a -q)