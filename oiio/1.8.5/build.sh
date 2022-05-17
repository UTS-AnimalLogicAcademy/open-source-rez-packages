#! /bin/bash

tar -xvf Release-1.8.5.tar.gz
rm oiio-Release-1.8.5/CMakeLists.txt
cp patch/CMakeLists_root.txt oiio-Release-1.8.5/CMakeLists.txt
rm oiio-Release-1.8.5/src/dicom.imageio/dicominput.cpp
cp patch/dicominput.cpp oiio-Release-1.8.5/src/dicom.imageio/
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages/oiio
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=1.8.5.3
export MAKE_THREADS=28

# build variant 1
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.55
rez-env qt-5 boost-1.55 cmake openexr ilmbase ocio ffmpeg-3 -c ./_rezbuild_.sh

# clean up
rm -rf oiio-Release-1.8.5

# build variant 2
tar -xvf Release-1.8.5.tar.gz
rm oiio-Release-1.8.5/CMakeLists.txt
cp patch/CMakeLists_root.txt oiio-Release-1.8.5/CMakeLists.txt
rm oiio-Release-1.8.5/src/dicom.imageio/dicominput.cpp
cp patch/dicominput.cpp oiio-Release-1.8.5/src/dicom.imageio/

export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.61
rez-env qt-5 boost-1.61 cmake openexr ilmbase ocio ffmpeg-3 -c ./_rezbuild_.sh

# build variant 3
tar -xvf Release-1.8.5.tar.gz
rm oiio-Release-1.8.5/CMakeLists.txt
cp patch/CMakeLists_root.txt oiio-Release-1.8.5/CMakeLists.txt
rm oiio-Release-1.8.5/src/python/CMakeLists.txt
cp patch/CMakeLists_python_boost_1_70.txt oiio-Release-1.8.5/src/python/CMakeLists.txt
rm oiio-Release-1.8.5/src/dicom.imageio/dicominput.cpp
cp patch/dicominput.cpp oiio-Release-1.8.5/src/dicom.imageio/

export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.70
rez-env qt-5 boost-1.70 cmake openexr ilmbase ocio ffmpeg-3 -c ./_rezbuild_.sh

# build variant 4
tar -xvf Release-1.8.5.tar.gz
rm oiio-Release-1.8.5/CMakeLists.txt
cp patch/CMakeLists_root.txt oiio-Release-1.8.5/CMakeLists.txt
rm oiio-Release-1.8.5/src/python/CMakeLists.txt
cp patch/CMakeLists_python_boost_1_72.txt oiio-Release-1.8.5/src/python/CMakeLists.txt
rm oiio-Release-1.8.5/src/dicom.imageio/dicominput.cpp
cp patch/dicominput.cpp oiio-Release-1.8.5/src/dicom.imageio/

export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.72
rez-env qt-5 boost-1.72 cmake openexr ilmbase ocio ffmpeg-3 -c ./_rezbuild_.sh