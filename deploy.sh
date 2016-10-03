#!/bin/bash

docker push chavipuri/node-web-app

ssh ubuntu@54.161.223.251 <<EOF
    docker pull chavipuri/node-web-app:latest
    docker stop web || true
    docker rm web || true
    docker rmi chavipuri/node-web-app:current || true
    docker tag chavipuri/node-web-app:latest chavipuri/node-web-app:current
    docker run -p 5000:5000 --name web -d chavipuri/node-web-app:current
EOF
