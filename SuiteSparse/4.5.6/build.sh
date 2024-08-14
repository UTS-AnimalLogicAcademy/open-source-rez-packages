#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=SuiteSparse
export PACKAGE_VERSION=4.5.6
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ openblas -c './_rezbuild_.sh'