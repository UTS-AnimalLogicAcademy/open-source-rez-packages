#! /bin/bash

wget https://sourceforge.net/projects/qtpfsgui/files/luminance/2.4.0/luminance-hdr-2.4.0.tar.bz2
tar -xvf luminance-hdr-2.4.0.tar.bz2

rm luminance-hdr-2.4.0/src/Libpfs/manip/gamma_levels.cpp
cp patch/gamma_levels.cpp luminance-hdr-2.4.0/src/Libpfs/manip/gamma_levels.cpp

rm luminance-hdr-2.4.0/cmake/FindGSL.cmake
cp patch/FindGSL.cmake luminance-hdr-2.4.0/cmake/FindGSL.cmake

rm luminance-hdr-2.4.0/cmake/CompilerSettings.cmake
cp patch/CompilerSettings.cmake luminance-hdr-2.4.0/cmake/CompilerSettings.cmake

rm luminance-hdr-2.4.0/cmake/FindOpenEXR.cmake
cp patch/FindOpenEXR.cmake luminance-hdr-2.4.0/cmake/FindOpenEXR.cmake

rm luminance-hdr-2.4.0/src/UI/about.ui
cp patch/about.ui luminance-hdr-2.4.0/src/UI/about.ui

rm luminance-hdr-2.4.0/src/CMakeLists.txt
cp patch/src_CMakeLists.txt luminance-hdr-2.4.0/src/CMakeLists.txt

rm luminance-hdr-2.4.0/src/Libpfs/CMakeLists.txt
cp patch/Libpfs_CMakeLists.txt luminance-hdr-2.4.0/src/Libpfs/CMakeLists.txt

rm luminance-hdr-2.4.0/CMakeLists.txt
cp patch/root_CMakeLists.txt luminance-hdr-2.4.0/CMakeLists.txt

rm luminance-hdr-2.4.0/src/Libpfs/exif/exif_data.cpp
cp patch/exif_data.cpp luminance-hdr-2.4.0/src/Libpfs/exif/exif_data.cpp

rm luminance-hdr-2.4.0/src/TransplantExif/TransplantExifDialog.cpp
cp patch/TransplantExifDialog.cpp luminance-hdr-2.4.0/src/TransplantExif/TransplantExifDialog.cpp

rm luminance-hdr-2.4.0/src/Exif/ExifOperations.cpp
cp patch/ExifOperations.cpp luminance-hdr-2.4.0/src/Exif/ExifOperations.cpp

rm luminance-hdr-2.4.0/src/MainWindow/MainWindow.cpp
cp patch/MainWindow.cpp luminance-hdr-2.4.0/src/MainWindow/MainWindow.cpp

rm /luminance-hdr-2.4.0/src/MainWindow/MainWindow.h
cp patch/MainWindow.h luminance-hdr-2.4.0/src/MainWindow/MainWindow.h

rm /luminance-hdr-2.4.0/src/MainWindow/MainWindow.ui
cp patch/MainWindow.ui luminance-hdr-2.4.0/src/MainWindow/MainWindow.ui

# Some patches are being updated in this repo and may need to be added to the patch folder in the future:
# https://github.com/gentoo/gentoo/tree/master/media-gfx/luminance-hdr/files
#
# The following patches are currently included in this script to get 2.4.0 working with newer dependencies: 
# https://github.com/gentoo/gentoo/blob/master/media-gfx/luminance-hdr/files/luminance-hdr-2.6.1.1-clamp-redefinition.patch
# https://github.com/gentoo/gentoo/blob/master/media-gfx/luminance-hdr/files/luminance-hdr-2.6.1.1-openexr3.patch
# https://github.com/gentoo/gentoo/blob/master/media-gfx/luminance-hdr/files/luminance-hdr-2.6.1.1-compilersettings-and-openmp.patch
# https://github.com/gentoo/gentoo/blob/master/media-gfx/luminance-hdr/files/luminance-hdr-2.6.1.1-clamp-redefinition.patch
# https://github.com/gentoo/gentoo/blob/master/media-gfx/luminance-hdr/files/luminance-hdr-2.6.1.1-exiv2-0.28.patch