#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=2.5.7.0.2
export MAKE_THREADS=28

rez-env openexr-3.2 ocio-2.3 ffmpeg-6 tbb-2020.3 ptex-2.4 qt-6.5 boost-1.82 python-3.11 pybind11 openjpeg libjpegturbo cmake-3 devtoolset-11 -c ./_rezbuild_.sh
