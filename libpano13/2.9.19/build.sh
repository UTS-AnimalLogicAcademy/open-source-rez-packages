#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=libpano13
export PACKAGE_VERSION=2.9.19
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ -c './_rezbuild_.sh'