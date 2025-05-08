#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=libjpegturbo
export PACKAGE_VERSION=2.1.5.1.1
export MAKE_THREADS=28

rez-env cmake-3.16 devtoolset-9 -c ./_rezbuild_.sh
