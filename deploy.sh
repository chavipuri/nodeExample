#!/bin/bash

docker push chavi/node-web-app

ssh ubuntu@54.161.223.251 <<EOF
    docker pull chavi/node-web-app:latest
    docker run -p 5000:5000 -d chavi/node-web-app:latest
EOF
