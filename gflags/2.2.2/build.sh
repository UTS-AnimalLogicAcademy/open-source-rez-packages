#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=gflags
export PACKAGE_VERSION=2.2.3
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ -c './_rezbuild_.sh'