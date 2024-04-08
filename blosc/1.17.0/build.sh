#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=blosc
export PACKAGE_VERSION=1.17.0
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ -c './_rezbuild_.sh'