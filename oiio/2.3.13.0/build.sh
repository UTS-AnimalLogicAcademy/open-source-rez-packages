#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=2.3.13.4
export MAKE_THREADS=28

export VARIANT=/boost_katana-1.80/tbb_katana-2020.3/!boost/!tbb
rez-env openexr-3.1 ocio-2.2 ffmpeg-4 tbb_katana-2020.3 "ptex-2.4.2<2.4.2.1" qt-5.15 boost_katana-1.80 python-3.10 pybind11 cmake-3 -c ./_rezbuild_katana_.sh
