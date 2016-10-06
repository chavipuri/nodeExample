#!/bin/bash
#docker login -e "chavi.malhotra@gmail.com" -u "chavipuri" -p "ankush"
#docker push chavipuri/node-web-app

ssh ubuntu@54.172.3.252 <<EOF
#    docker pull chavipuri/node-web-app:latest
#    docker stop web || true
#    docker rm web || true
#    docker rmi chavipuri/node-web-app:current || true
#    docker tag chavipuri/node-web-app:latest chavipuri/node-web-app:current
    docker run -p 5000:5000 --name web -d chavipuri/node-web-app
EOF
