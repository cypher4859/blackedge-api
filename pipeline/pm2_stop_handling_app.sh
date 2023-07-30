#!/bin/bash

cd /home/ubuntu/blackedge-api
CWD=$(pwd)
echo "Using PM2 to start the Blackedge API server from ${CWD}"
ls -l
source .venv/bin/activate
pm2 stop "python3 -m flask run"