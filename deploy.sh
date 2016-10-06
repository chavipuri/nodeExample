#!/bin/bash

ssh ubuntu@54.172.3.252 <<EOF
   docker stop web || true
   docker rm web || true
   docker rmi chavi/node-web-app || true
   mkdir nodeExample
   cd ~/nodeExample
   git pull
   docker build -t chavi/node-web-app .
   docker run -p 5000:5000 --name web -d chavi/node-web-app 
EOF
