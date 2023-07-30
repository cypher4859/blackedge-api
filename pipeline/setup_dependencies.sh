#!/bin/bash

cd /home/ubuntu/blackedge-api

echo "Updating system"
apt-get update
apt install -y python3.10-venv

echo "Setting Venv"
python3 -m venv .venv
source .venv/bin/activate

echo "Installing dependencies"
apt install -y npm
npm install pm2@latest -g
pip install Flask
pip install -r requirements.txt

echo "Ensuring log location"
mkdir -p /var/log/pm2/blackedge-api
