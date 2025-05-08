#! /bin/bash

git clone https://github.com/RongLiu-Leo/Gaussian-Splatting-Monitor

rm Gaussian-Splatting-Monitor/SIBR_viewers/cmake/linux/Modules/FindASSIMP.cmake

cp patch/FindGLEW.cmake Gaussian-Splatting-Monitor/SIBR_viewers/cmake/linux/Modules/FindGLEW.cmake

rm Gaussian-Splatting-Monitor/SIBR_viewers/cmake/linux/dependencies.cmake
cp patch/dependencies.cmake Gaussian-Splatting-Monitor/SIBR_viewers/cmake/linux/dependencies.cmake