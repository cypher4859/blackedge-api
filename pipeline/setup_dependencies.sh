#!/bin/bash

cd /home/ubuntu/blackedge-api

echo "Setting Venv"
python3 -m venv .venv
source .venv/bin/activate

echo "Installing dependencies"
pip install -r requirements.txt

# echo "Updating system"
# apt-get update
# apt install -y python3.10-venv
# apt install -y npm
# pip install Flask
# npm install pm2 -g

# echo "Ensuring log location"
# mkdir -p /var/log/pm2/blackedge-api
