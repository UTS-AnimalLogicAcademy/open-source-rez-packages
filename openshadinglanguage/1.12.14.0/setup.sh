#! /bin/bash

source version.sh

wget https://github.com/AcademySoftwareFoundation/OpenShadingLanguage/archive/refs/tags/v$VERSION.tar.gz
tar -xvf v$VERSION.tar.gz

rm OpenShadingLanguage-$VERSION/src/cmake/pythonutils.cmake
cp patch/pythonutils.cmake OpenShadingLanguage-$VERSION/src/cmake/pythonutils.cmake

rm OpenShadingLanguage-$VERSION/CMakeLists.txt
cp patch/CMakeLists.txt OpenShadingLanguage-$VERSION/CMakeLists.txt