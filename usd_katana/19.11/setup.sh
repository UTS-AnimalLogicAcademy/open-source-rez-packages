#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip


# patch so that we can build the katan plugin without building all of usd
# assumes usd is already built and installed as a rez package
#rm USD-$VERSION/third_party/katana/CMakeLists.txt
#rm USD-$VERSION/CMakeLists.txt
#rm USD-$VERSION/cmake/defaults/Options.cmake
#cp patch/CMakeLists_katana.txt USD-$VERSION/third_party/katana/CMakeLists.txt
#cp patch/CMakeLists_root.txt USD-$VERSION/CMakeLists.txt
#cp patch/Options.cmake USD-$VERSION/cmake/defaults/Options.cmake
