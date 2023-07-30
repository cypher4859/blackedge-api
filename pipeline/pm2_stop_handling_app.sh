#!/bin/bash

cd /home/ubuntu/blackedge-api && source .venv/bin/activate
pm2 stop "python3 -m flask run"