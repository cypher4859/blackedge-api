#!/bin/bash

echo "Installing requirements"
cd /home/ubuntu/blackedge-api

apt-get update
apt install -y python3.10-venv
python3 -m venv .venv
source .venv/bin/activate
pip install Flask
pip install -r requirements.txt
