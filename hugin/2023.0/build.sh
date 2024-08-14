#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=hugin
export PACKAGE_VERSION=2023.0.0
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ boost-1.80 exiv2 fftw-3 glew openexr-2.2 libpano13 swig wxWidgets python-3 enblend exiftool -c './_rezbuild_.sh'