#!/bin/bash

echo "Installing requirements"
ls -l > log_work_dir
pip install -r ../requirements.txt
