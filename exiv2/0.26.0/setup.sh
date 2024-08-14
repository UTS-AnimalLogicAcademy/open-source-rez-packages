#! /bin/bash

wget https://github.com/Exiv2/exiv2/archive/refs/tags/v0.26.tar.gz
tar -xvf v0.26.tar.gz

rm exiv2-0.26/CMakeLists.txt

cp patch/CMakeLists.txt exiv2-0.26/CMakeLists.txt
