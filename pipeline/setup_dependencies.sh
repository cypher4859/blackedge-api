#!/bin/bash

echo "Installing requirements"
cd /home/ubuntu/blackedge-api

apt-get update
pip install -r requirements.txt
