#! /bin/bash

wget https://github.com/OpenImageIO/oiio/archive/refs/tags/v2.5.7.0.tar.gz
tar -xvf v2.5.7.0.tar.gz

# rm OpenImageIO-2.5.15.0/CMakeLists.txt
# cp patch/CMakeLists.txt OpenImageIO-2.5.15.0/CMakeLists.txt