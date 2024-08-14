#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=enblend
export PACKAGE_VERSION=4.2
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ gsl boost-1.80 vigra fftw-3 openexr-2.2 -c './_rezbuild_.sh'