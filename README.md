# What's this
This is a installer for yolo-v3 tiny based on bash.

[yolo](https://pjreddie.com/darknet/yolo/) is a software for quick object detection.

# Pre-requirements
Please ensure the environment is compatible to run this script.

- Hardware
  - [Raspberry Pi 4 (4GB RAM)](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/)

- Software
  - [Ubuntu server 18.04](http://old-releases.ubuntu.com/releases/18.04.4/ubuntu-18.04.4-preinstalled-server-arm64+raspi4.img.xz)
  - bash shell

If all things get ready, you can download the script and run it.
Have a cup of coffee and take a rest!

# Install
1. Please ensure all scripts are executable for the user.

        chmod u+x *.bash


2. Install yolo-v3 tiny

        ./install_yolo.bash

3. Install yolo-v3 tiny for realtime object detection

        ./install_opencv.bash
        ./install_yolo_realtime.bash

# Note
In these scripts, not all operation are automatically done.  Some operations have to be done by yourself.  For example, some commands need root privilege. Therefore, you have to enter the password by yourself.

# Copyright
This script is written by [haward79](https://www.haward79.tw/).
This script is free to use for both education and business.

