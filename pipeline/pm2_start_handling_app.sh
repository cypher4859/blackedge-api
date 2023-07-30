#!/bin/bash

cd /home/ubuntu/blackedge-api && source .venv/bin/activate
pm2 start "python3 -m flask run" --log /var/log/pm2/blackedge-api/current_log.log