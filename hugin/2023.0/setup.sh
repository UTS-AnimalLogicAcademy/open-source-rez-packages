#! /bin/bash

wget https://sourceforge.net/projects/hugin/files/hugin/hugin-2023.0/hugin-2023.0.0.tar.bz2
tar -xvf hugin-2023.0.0.tar.bz2


rm hugin-2023.0.0/CMakeModules/FindEXIV2.cmake
cp patch/FindEXIV2.cmake hugin-2023.0.0/CMakeModules/FindEXIV2.cmake

rm hugin-2023.0.0/CMakeModules/FindFFTW.cmake
cp patch/FindFFTW.cmake hugin-2023.0.0/CMakeModules/FindFFTW.cmake

rm hugin-2023.0.0/CMakeModules/FindOpenEXR.cmake
cp patch/FindOpenEXR.cmake hugin-2023.0.0/CMakeModules/FindOpenEXR.cmake

rm hugin-2023.0.0/CMakeModules/FindPANO13.cmake
cp patch/FindPANO13.cmake hugin-2023.0.0/CMakeModules/FindPANO13.cmake
