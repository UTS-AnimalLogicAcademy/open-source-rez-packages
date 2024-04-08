#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=freetype
export PACKAGE_VERSION=$VERSION
export MAKE_THREADS=28

rez-env devtoolset-11 cmake-3 brotli -c './build.sh'