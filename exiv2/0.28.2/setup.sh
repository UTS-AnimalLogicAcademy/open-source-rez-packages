#! /bin/bash

wget https://github.com/Exiv2/exiv2/archive/refs/tags/v0.28.2.tar.gz
tar -xvf v0.28.2.tar.gz

rm exiv2-0.28.2/cmake/FindBrotli.cmake
cp patch/FindBrotli.cmake exiv2-0.28.2/cmake/FindBrotli.cmake

rm exiv2-0.28.2/cmake/Findinih.cmake
cp patch/Findinih.cmake exiv2-0.28.2/cmake/Findinih.cmake

rm exiv2-0.28.2/CMakeLists.txt
cp patch/CMakeLists.txt exiv2-0.28.2/CMakeLists.txt