#!/bin/bash

ssh ubuntu@54.161.223.251 <<EOF
    git clone https://github.com/chavipuri/nodeExample.git
    cd ~/nodeExample
    docker build -t chavi/node-web-app .
    docker run -p 5000:5000 -d chavi/node-web-app
    exit
EOF
