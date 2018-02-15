#! /bin/bash

wget https://github.com/PixarAnimationStudios/USD/archive/v0.8.3.tar.gz
tar -xvf v0.8.3.tar.gz

# patch so that we can build the maya plugin without building all of usd
# assumes usd is already built and installed as a rez package
rm USD-0.8.3/third_party/maya/CMakeLists.txt
rm USD-0.8.3/CMakeLists.txt
rm USD-0.8.3/cmake/defaults/Options.cmake
cp patch/CMakeLists_maya.txt USD-0.8.3/third_party/maya/CMakeLists.txt
cp patch/CMakeLists_root.txt USD-0.8.3/CMakeLists.txt
cp patch/Options.cmake USD-0.8.3/cmake/defaults/Options.cmake
