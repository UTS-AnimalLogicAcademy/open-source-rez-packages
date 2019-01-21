#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip

# patch so that we can build the maya plugin without building all of usd
# assumes usd is already built and installed as a rez package
#rm USD-$VERSION/third_party/maya/CMakeLists.txt
#rm USD-$VERSION/CMakeLists.txt
#rm USD-$VERSION/cmake/defaults/Options.cmake
cp patch/CMakeLists_maya.txt USD-$VERSION/third_party/maya/CMakeLists.txt
cp patch/CMakeLists_root.txt USD-$VERSION/CMakeLists.txt
cp patch/Options.cmake USD-$VERSION/cmake/defaults/Options.cmake
cp patch/__init__.py USD-$VERSION/third_party/maya/lib/
cp patch/maya_plugin_lib_cmakelists.txt USD-$VERSION/third_party/maya/lib/CMakeLists.txt
