#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip

mv USD-$VERSION/* .

#Uncomment from here onwards when moving to python3
#rm CMakeLists.txt
#cp patch/CMakeLists.txt .

#rm cmake/modules/FindTBB.cmake
#cp patch/FindTBB.cmake cmake/modules/FindTBB.cmake

#rm cmake/defaults/Options.cmake
#cp patch/Options.cmake cmake/defaults/Options.cmake

