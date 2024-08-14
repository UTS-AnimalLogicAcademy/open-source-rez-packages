#! /bin/bash

wget https://github.com/AcademySoftwareFoundation/OpenShadingLanguage/archive/refs/tags/v1.12.13.0.tar.gz
tar -xvf v1.12.13.0.tar.gz

rm OpenShadingLanguage-1.12.13.0/src/cmake/pythonutils.cmake
cp patch/pythonutils.cmake OpenShadingLanguage-1.12.13.0/src/cmake/pythonutils.cmake

rm OpenShadingLanguage-1.12.13.0/CMakeLists.txt
cp patch/CMakeLists.txt OpenShadingLanguage-1.12.13.0/CMakeLists.txt