#! /usr/bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=opensubdiv
export PACKAGE_VERSION=3.6.0
export MAKE_THREADS=28

rez-env cmake-3 tbb-2020.3 ptex-2.4 clew devtoolset-11 -c ./_rezbuild_.sh
