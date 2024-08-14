#! /bin/bash

wget https://sourceforge.net/projects/qtpfsgui/files/luminance/2.4.0/luminance-hdr-2.4.0.tar.bz2
tar -xvf luminance-hdr-2.4.0.tar.bz2

rm luminance-hdr-2.4.0/cmake/FindGSL.cmake
cp patch/FindGSL.cmake luminance-hdr-2.4.0/cmake/FindGSL.cmake

rm luminance-hdr-2.4.0/cmake/FindOpenEXR.cmake
cp patch/FindOpenEXR.cmake luminance-hdr-2.4.0/cmake/FindOpenEXR.cmake

rm luminance-hdr-2.4.0/src/UI/about.ui
cp patch/about.ui luminance-hdr-2.4.0/src/UI/about.ui

rm luminance-hdr-2.4.0/src/CMakeLists.txt
cp patch/src_CMakeLists.txt luminance-hdr-2.4.0/src/CMakeLists.txt