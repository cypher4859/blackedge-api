#!/bin/bash

cd /home/ubuntu/blackedge-api
CWD=$(pwd)
echo "Running the Blackedge API server from ${CWD}"

python3 -m flask run