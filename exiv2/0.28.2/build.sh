#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=exiv2
export PACKAGE_VERSION=0.28.2
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ brotli -c './_rezbuild_.sh'