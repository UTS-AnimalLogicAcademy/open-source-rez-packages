#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip


# patch so that we can build the katan plugin without building all of usd
# assumes usd is already built and installed as a rez package
rm USD-$VERSION/CMakeLists.txt
rm USD-$VERSION/cmake/defaults/Options.cmake
rm USD-$VERSION/cmake/macros/Private.cmake
rm USD-$VERSION/cmake/macros/Public.cmake
cp patch/CMakeLists.txt USD-$VERSION/CMakeLists.txt
cp patch/Options.cmake USD-$VERSION/cmake/defaults/Options.cmake
cp patch/Private.cmake USD-$VERSION/cmake/macros/Private.cmake
cp patch/Public.cmake USD-$VERSION/cmake/macros/Public.cmake
