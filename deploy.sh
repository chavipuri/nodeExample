#!/bin/bash

docker push chavipuri/node-web-app

ssh ubuntu@54.161.223.251 <<EOF
    docker pull chavipuri/node-web-app:latest
    docker run -p 5000:5000 -d chavipuri/node-web-app:latest
EOF
