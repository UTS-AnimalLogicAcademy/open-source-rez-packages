#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=mpfr
export PACKAGE_VERSION=4.0.2
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ gmp-6.1.2 -c './_rezbuild_.sh'