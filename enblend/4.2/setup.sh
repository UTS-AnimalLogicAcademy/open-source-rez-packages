#! /bin/bash

wget https://downloads.sourceforge.net/project/enblend/enblend-enfuse/enblend-enfuse-4.2/enblend-enfuse-4.2.tar.gz
tar -xvf enblend-enfuse-4.2.tar.gz

rm enblend-enfuse-4.2/src/dynamic_loader/CMakeLists.txt
cp patch/CMakeLists_dynamic_loader.txt enblend-enfuse-4.2/src/dynamic_loader/CMakeLists.txt

rm enblend-enfuse-4.2/src/layer_selection/CMakeLists.txt
cp patch/CMakeLists_layer_selection.txt enblend-enfuse-4.2/src/layer_selection/CMakeLists.txt

rm enblend-enfuse-4.2/CMakeModules/FindVIGRA.cmake
cp patch/FindVIGRA.cmake enblend-enfuse-4.2/CMakeModules/FindVIGRA.cmake

rm enblend-enfuse-4.2/CMakeModules/FindOpenEXR.cmake
cp patch/FindOpenEXR.cmake enblend-enfuse-4.2/CMakeModules/FindOpenEXR.cmake

rm enblend-enfuse-4.2/src/minimizer.cc
cp patch/minimizer.cc enblend-enfuse-4.2/src/minimizer.cc