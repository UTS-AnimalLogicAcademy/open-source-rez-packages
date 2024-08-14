#! /bin/bash

source version.sh

wget https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/refs/tags/v$BUILD_VERSION.zip
unzip v$BUILD_VERSION.zip

# dan: dunno why I ever di this?:
mv OpenColorIO-$BUILD_VERSION/* . 
# rm CMakeLists.txt
# cp patch/CMakeLists.txt CMakeLists.txt

# cp patch/OCIOMacros.cmake share/cmake/OCIOMacros.cmake

rm share/cmake/modules/Findyaml-cpp.cmake
cp patch/Findyaml-cpp.cmake share/cmake/modules/Findyaml-cpp.cmake
