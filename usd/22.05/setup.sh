#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip

mv OpenUSD-$VERSION/* .

rm CMakeLists.txt
cp patch/CMakeLists.txt .

