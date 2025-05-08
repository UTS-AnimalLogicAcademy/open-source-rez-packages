#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=luminance_hdr
export PACKAGE_VERSION=2.4.1
export MAKE_THREADS=28

rez-env cmake-3.16 qt-5.15 fftwf-3 openexr-3 gsl exiv2-0.28 boost-1.80 python-3.10 -c './_rezbuild_.sh'