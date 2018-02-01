#!/bin/bash

output() {
    printf "\E[0;33;40m"
    echo $1
    printf "\E[0m"
}

output "Building a new image from source"
docker build -t ubuntu:my-ubuntu .


output "Running a new container from the image"
docker run --privileged --name my-ubuntu -p 8002:8002 -d ubuntu:my-ubuntu

output "Logging into the newly created contaienr"
docker exec -it my-ubuntu bash
