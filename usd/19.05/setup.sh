#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip

rm USD-$VERSION/CMakeLists.txt
cp patch/CMakeLists.txt USD-$VERSION/CMakeLists.txt

