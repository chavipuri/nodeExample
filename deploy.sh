#!/bin/bash

ssh ubuntu@54.191.176.102 <<EOF
   docker stop web || true
   docker rm web || true
   docker rmi chavi/node-web-app || true
   cd ~/nodeExample
   git pull
   docker build -t chavi/node-web-app .
   docker run -p 5000:5000 --name web -d chavi/node-web-app
EOF
