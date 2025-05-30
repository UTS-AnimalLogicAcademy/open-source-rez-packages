#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=2.5.15.0.1
export MAKE_THREADS=28

rez-env openexr-3.1 ocio-2.2 ffmpeg-4 tbb-2020.3 ptex-2.4 qt-5.15 boost-1.80 python-3.10 pybind11 openjpeg libjpegturbo dcmtk cmake-3 devtoolset-9 -c ./_rezbuild_.sh
