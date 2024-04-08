#! /bin/bash

source version.sh

wget https://github.com/TheFoundryVisionmongers/KatanaUsdPlugins/archive/v$BUILD_VERSION.tar.gz
tar -xvf v$BUILD_VERSION.tar.gz

rm KatanaUsdPlugins-$BUILD_VERSION/cmake/macros/SetupInterfaces.cmake
cp patch/SetupInterfaces.cmake KatanaUsdPlugins-$BUILD_VERSION/cmake/macros/SetupInterfaces.cmake

rm KatanaUsdPlugins-$BUILD_VERSION/cmake/macros/Support.cmake
cp patch/Support.cmake KatanaUsdPlugins-$BUILD_VERSION/cmake/macros/Support.cmake

rm KatanaUsdPlugins-$BUILD_VERSION/cmake/modules/FindUSD.cmake
cp patch/FindUSD.cmake KatanaUsdPlugins-$BUILD_VERSION/cmake/modules/FindUSD.cmake