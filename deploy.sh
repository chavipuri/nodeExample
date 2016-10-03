#!/bin/bash

docker push chavi/nodeExample

ssh ubuntu@54.161.223.251 <<EOF
    docker pull chavi/nodeExample:latest
    docker run -p 5000:5000 -d chavi/nodeExample:latest
EOF
