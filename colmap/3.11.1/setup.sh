#! /bin/bash

source version.sh

wget https://github.com/colmap/colmap/archive/refs/tags/$VERSION.tar.gz
tar -xvf $VERSION.tar.gz
mv colmap-$VERSION colmap

# Patch to add COLMAP_INCLUDE_DIRS to include Boost includes from FindDependencies.cmake
rm colmap/CMakeLists.txt
cp patch/CMakeLists_colmap.txt colmap/CMakeLists.txt

# Patch to add Boost includes to be included in CMakeLists.txt
rm colmap/cmake/FindDependencies.cmake
cp patch/FindDependencies.cmake colmap/cmake/FindDependencies.cmake

# Patch to unset HINT vars by default
rm colmap/cmake/FindFLANN.cmake
cp patch/FindFLANN.cmake colmap/cmake/FindFLANN.cmake

# Patch to unset HINT vars by default
rm colmap/cmake/FindGlew.cmake
cp patch/FindGlew.cmake colmap/cmake/FindGlew.cmake