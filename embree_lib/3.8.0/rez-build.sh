#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=embree_lib
export PACKAGE_VERSION=$VERSION
export MAKE_THREADS=28

rez-env devtoolset-11 cmake-3 tbb-2020.3 ispc oiio-2.4 -c './build.sh'