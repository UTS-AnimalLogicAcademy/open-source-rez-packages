#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=fftw
export PACKAGE_VERSION=$VERSION
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ -c './_rezbuild_.sh'
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

export PACKAGE_NAME=fftwf

rez-env cmake-3 devtoolset-7+ -c './_rezbuild_float.sh'
cp package_float.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/package.py