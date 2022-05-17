#! /bin/bash

wget https://github.com/PixarAnimationStudios/OpenSubdiv/archive/v3_4_3.tar.gz
tar -xvf v3_4_3.tar.gz

rm OpenSubdiv-3_4_3/CMakeLists.txt
cp patch/CMakeLists.txt OpenSubdiv-3_4_3/CMakeLists.txt

rm OpenSubdiv-3_4_3/cmake/FindPTex.cmake
cp patch/FindPTex.cmake OpenSubdiv-3_4_3/cmake/FindPTex.cmake

rm OpenSubdiv-3_4_3/cmake/FindTBB.cmake
cp patch/FindTBB.cmake OpenSubdiv-3_4_3/cmake/FindTBB.cmake