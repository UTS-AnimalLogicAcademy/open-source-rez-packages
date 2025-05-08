#! /bin/bash

source version.sh

wget wget https://github.com/opencv/opencv/archive/refs/tags/$VERSION.tar.gz
tar -xvf $VERSION.tar.gz

mv opencv-$VERSION opencv

# Patch to ensure the Rez Python Interp and Libs are found
rm opencv/cmake/OpenCVDetectPython.cmake
cp patch/OpenCVDetectPython.cmake opencv/cmake/OpenCVDetectPython.cmake

rm $VERSION.tar.gz

wget wget https://github.com/opencv/opencv_contrib/archive/refs/tags/$VERSION.tar.gz
tar -xvf $VERSION.tar.gz

mv opencv_contrib-$VERSION opencv_contrib