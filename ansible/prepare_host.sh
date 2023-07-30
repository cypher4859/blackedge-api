#!/bin/bash

# Install pip
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py --user

apt intsall pipx

# Use pip to install ansible
# python3 -m pip install --user ansible
pipx install --include-deps ansible
pipx ensurepath

# Use ansible-galaxy to install prerequisite roles/collections
ansible-galaxy collection install community.general