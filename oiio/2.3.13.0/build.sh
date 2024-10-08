#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=2.3.13.3
export MAKE_THREADS=28

export VARIANT=/boost_katana-1.76/tbb_katana-2020.3/!boost/!tbb
rez-env openexr-3.1 ocio-2.1 ffmpeg-4 tbb_katana-2020.3 "ptex-2.4.2<2.4.2.1" qt-5.15 boost_katana-1.76 python-3.9 pybind11 cmake-3.16 devtoolset-9 -c ./_rezbuild_katana_.sh

rm -rf OpenImageIO-2.3.13.0/build

export VARIANT=/boost-1.76/tbb-2020.3/qt-5.15.2/nuke-14.1
rez-env openexr-3.1 ocio-2.1 ffmpeg-4 tbb-2020.3 "ptex-2.4.2<2.4.2.1" qt-5.15.2 boost-1.76 python-3.9 pybind11 nuke-14.1 cmake-3.16 devtoolset-9 -c ./_rezbuild_.sh