#!/bin/bash

# Reference to https://pjreddie.com/darknet/yolo/

mkdir yolo
cd yolo

git clone https://github.com/pjreddie/darknet
cd darknet
make

wget https://pjreddie.com/media/files/yolov3-tiny.weights

echo -e "Run \e[96m./darknet detect cfg/yolov3-tiny.cfg yolov3-tiny.weights data/dog.jpg\e[0m to test installation."

