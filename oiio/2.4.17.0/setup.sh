#! /bin/bash

wget https://github.com/OpenImageIO/oiio/archive/refs/tags/v2.4.17.0.tar.gz
tar -xvf v2.4.17.0.tar.gz

rm OpenImageIO-2.4.17.0/CMakeLists.txt
cp patch/CMakeLists.txt OpenImageIO-2.4.17.0/CMakeLists.txt