#! /bin/bash

wget https://github.com/OpenImageIO/oiio/archive/Release-1.8.5.tar.gz
tar -xvf Release-1.8.5.tar.gz

rm oiio-Release-1.8.5/CMakeLists.txt
cp patch/CMakeLists.txt oiio-Release-1.8.5/

rm oiio-Release-1.8.5/src/dicom.imageio/dicominput.cpp
cp patch/dicominput.cpp oiio-Release-1.8.5/src/dicom.imageio/

