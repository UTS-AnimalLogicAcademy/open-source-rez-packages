#! /usr/bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=opensubdiv
export PACKAGE_VERSION=3.5.1
export MAKE_THREADS=28

rez-env cmake-3.12 tbb-2020.3 ptex-2.4 clew devtoolset-7 -c ./_rezbuild_.sh
