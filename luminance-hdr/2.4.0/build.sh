#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=luminance_hdr
export PACKAGE_VERSION=2.4.0
export MAKE_THREADS=28

rez-env cmake-3.16 qt-5.6 fftwf-3 openexr-2.2 gsl exiv2-0.26 boost-1.80 -c './_rezbuild_.sh'