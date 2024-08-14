#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=glog
export PACKAGE_VERSION=0.4.0
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ gflags -c './_rezbuild_.sh'