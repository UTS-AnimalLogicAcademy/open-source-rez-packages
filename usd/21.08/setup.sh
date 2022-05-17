#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip

mv USD-$VERSION/* .

rm cmake/modules/FindTBB.cmake
cp patch/FindTBB.cmake cmake/modules/FindTBB.cmake

