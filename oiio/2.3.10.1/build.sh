#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=2.3.10.1
export MAKE_THREADS=28

rez-env openexr-3.1 ocio-2.1 ffmpeg tbb-2020.3 ptex-2.4 qt-5.15 boost-1.76 python-3.9 pybind11 cmake-3.16 devtoolset-9 -c ./_rezbuild_.sh
