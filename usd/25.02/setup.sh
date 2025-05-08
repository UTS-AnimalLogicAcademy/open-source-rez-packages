#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip

mv OpenUSD-$VERSION/* .

rm CMakeLists.txt
cp patch/CMakeLists_root.txt ./CMakeLists.txt

#rm pxr/usd/plugin/sdrOsl/CMakeLists.txt
#cp patch/CMakeLists_sdrOsl.txt pxr/usd/plugin/sdrOsl/CMakeLists.txt

rm cmake/defaults/Packages.cmake
cp patch/Packages.cmake cmake/defaults/Packages.cmake