#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=swig
export PACKAGE_VERSION=4.2.1
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ bison-3 -c './_rezbuild_.sh'