#!/bin/bash
# install_raspberry_pi.sh

echo "Installing base dependencies"
sudo apt-get update
sudo apt-get install -y ffmpeg \
    libsm6 libxext6 python-pip python3-pip \
    libatlas-base-dev python3-h5py libgtk2.0-dev libgtk-3-0 \
    libilmbase-dev libopenexr-dev libgstreamer1.0-dev \
    espeak gnustep-gui-runtime

cd ../

python -m pip install virtualenv

python -m virtualenv -p python3 env
. env/bin/activate
pip install --upgrade pip setuptools wheel
pip install -r src/requirements.txt
