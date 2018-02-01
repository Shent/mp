#!/bin/bash

echo "Removing the container"
docker container rm -f my-ubuntu

echo "Removing the image"
docker image rm ubuntu:my-ubuntu
