#! /bin/bash

wget https://github.com/OpenImageIO/oiio/archive/refs/tags/v2.3.13.0.tar.gz
tar -xvf v2.3.13.0.tar.gz

rm OpenImageIO-2.3.13.0/src/cmake/pythonutils.cmake
cp patch/pythonutils.cmake OpenImageIO-2.3.13.0/src/cmake/pythonutils.cmake