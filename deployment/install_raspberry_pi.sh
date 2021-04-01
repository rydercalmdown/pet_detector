#!/bin/bash
# install_raspberry_pi.sh

echo "Installing base dependencies"
sudo apt-get update
sudo apt-get install -y ffmpeg libsm6 libxext6 python-pip

cd ../

python -m pip install virtualenv

python -m virtualenv -p python3 env
. env/bin/activate
pip install -r src/requirements.txt
