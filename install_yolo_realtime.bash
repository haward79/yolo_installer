#!/bin/bash

# Reference to https://pjreddie.com/darknet/yolo/

echo -e 'Please modify \e[96myolo/darknet/Makefile\e[0m and replace old parameter with \e[96mOPENCV=1\e[0m .'
read -p 'Press any key to continue ......' trash
./install_opencv.bash

cd yolo/darknet

echo -e 'Please add the following lines to \e[96msrc/image_opencv.cpp\e[0m'
echo -e '\e[96m#include "opencv2/core/core_c.h"\e[0m'
echo -e '\e[96m#include "opencv2/videoio/legacy/constants_c.h"\e[0m'
echo -e '\e[96m#include "opencv2/highgui/highgui_c.h"\e[0m\n'

echo -e 'Please replace \e[96mIplImage ipl = m\e[0m to \e[96mIplImage ipl = cvIplImage(m);\e[0m in \e[96msrc/image_opencv.cpp\e[0m on \e[96mline 66\e[0m .'

read -p 'Press any key to continue ......' trash

make -j 4

sudo ldconfig

echo -e 'Please run \e[96m./darknet detector demo cfg/coco.data cfg/yolov3-tiny.cfg yolov3-tiny.weights\e[0m to test installation.'
echo -e '    or run \e[96m./darknet detector demo cfg/coco.data cfg/yolov3-tiny.cfg yolov3-tiny.weights -c INDEX\e[0m to assign camera index.\n'

echo -e 'Use the following scripts to test camera :'
echo -e '  \e[96msudo apt install v4l-utils libgl1-mesa-glx ffmpeg\e[0m'
echo -e '  \e[96mv4l2-ctl --list-devices\e[0m'
echo -e '  \e[96mffplay /dev/video4\e[0m'

