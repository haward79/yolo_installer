#!/bin/bash

# Install dependencies and tools.
sudo apt install unzip cmake libgtk2.0-dev

mkdir opencv
cd opencv

wget 'https://github.com/opencv/opencv/archive/4.5.1.zip'
unzip 4.5.1.zip

echo -e 'Please modify \e[96mopencv-4.5.1/CMakeLists.txt\e[0m : replace \e[96mOCV_OPTION\e[0m of \e[96mOPENCV_GENERATE_PKGCONFIG\e[0m to value \e[96mON\e[0m'

mkdir cmake-gen
cd cmake-gen
cmake -j 4 ../opencv-4.5.1/
make -j 4
sudo make install
sudo ln -s /usr/local/lib/pkgconfig/opencv4.pc /usr/local/lib/pkgconfig/opencv.pc

cd ../../

