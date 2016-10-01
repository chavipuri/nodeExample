#!/bin/bash

ssh ubuntu@54.196.4.44 <<EOF
    cd ~/nodeExample
    git pull
    docker build -t chavi/node-web-app .
    docker run -p 5000:5000 -d chavi/node-web-app
    exit
EOF
