#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=vigra
export PACKAGE_VERSION=1.11.1
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ fftw-3 fftwf-3 boost-1.80 openexr-2.2 nose python-3 -c './_rezbuild_.sh'