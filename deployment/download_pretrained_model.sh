#!/bin/bash
# download_pretrained_model.sh

cd ../src/models

MODEL_URL="https://pjreddie.com/media/files/yolov3.weights"

wget $MODEL_URL
