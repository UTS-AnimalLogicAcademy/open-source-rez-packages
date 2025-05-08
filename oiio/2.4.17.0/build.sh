#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=2.4.17.4
export MAKE_THREADS=28

rez-env openexr-3.2 ocio-2.3 ffmpeg tbb-2020.3 ptex-2.4 qt-6.5 boost-1.82 python-3.11 pybind11 openjpeg cmake-3.16 devtoolset-9 -c ./_rezbuild_.sh
