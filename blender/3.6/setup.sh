#! /bin/bash

#wget https://projects.blender.org/blender/blender/archive/blender-v3.6-release.tar.gz
#tar -xvf blender-v3.6-release.tar.gz

git clone https://github.com/blender/blender.git
cd blender

git checkout tags/v3.6.10
git submodule update --init --recursive

cd ..
rm blender/build_files/cmake/platform/platform_unix.cmake
cp patch/platform_unix.cmake blender/build_files/cmake/platform/platform_unix.cmake

rm blender/build_files/cmake/Modules/FindTBB.cmake
cp patch/FindTBB.cmake blender/build_files/cmake/Modules/FindTBB.cmake

rm blender/build_files/cmake/Modules/OpenEXR.cmake
cp patch/OpenEXR.cmake blender/build_files/cmake/Modules/OpenEXR.cmake

cd blender
make update

cd ..