#! /bin/bash

tar -xvf Release-1.8.5.tar.gz
rm oiio-Release-1.8.5/CMakeLists.txt
cp patch/CMakeLists.txt oiio-Release-1.8.5/
rm oiio-Release-1.8.5/src/dicom.imageio/dicominput.cpp
cp patch/dicominput.cpp oiio-Release-1.8.5/src/dicom.imageio/
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=1.8.5.1
export MAKE_THREADS=28

# build variant 1
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.55
rez-env qt-5 boost-1.55 cmake openexr ilmbase ocio ffmpeg -c ./_rezbuild_.sh

# clean up
rm -rf oiio-Release-1.8.5

# build variant 2
tar -xvf Release-1.8.5.tar.gz
rm oiio-Release-1.8.5/CMakeLists.txt
cp patch/CMakeLists.txt oiio-Release-1.8.5/
rm oiio-Release-1.8.5/src/dicom.imageio/dicominput.cpp
cp patch/dicominput.cpp oiio-Release-1.8.5/src/dicom.imageio/

export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.61
rez-env qt-5 boost-1.61 cmake openexr ilmbase ocio ffmpeg -c ./_rezbuild_.sh
