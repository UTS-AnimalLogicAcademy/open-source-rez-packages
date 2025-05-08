#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=SuiteSparse
export PACKAGE_VERSION=6.0.3.2
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ openblas mpfr-4.0.2 -c './_rezbuild_.sh'