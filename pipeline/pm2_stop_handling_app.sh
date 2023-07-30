#!/bin/bash

cd /home/ubuntu/blackedge-api
CWD=$(pwd)
echo "Using PM2 to start the Blackedge API server from ${CWD}"
ls -l
source .venv/bin/activate
apt install -y npm
npm install pm2@latest -g
pm2 stop "python3 -m flask run"