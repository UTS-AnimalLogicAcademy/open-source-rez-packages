#! /bin/bash

source version.sh

wget https://github.com/TheFoundryVisionmongers/KatanaUsdPlugins/archive/refs/tags/$BUILD_VERSION.tar.gz
tar -xvf $BUILD_VERSION.tar.gz

rm KatanaUsdPlugins-$BUILD_VERSION/cmake/macros/SetupInterfaces.cmake
cp patch/SetupInterfaces.cmake KatanaUsdPlugins-$BUILD_VERSION/cmake/macros/SetupInterfaces.cmake