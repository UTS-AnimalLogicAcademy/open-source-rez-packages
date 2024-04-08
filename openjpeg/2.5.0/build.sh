#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=openjpeg
export PACKAGE_VERSION=2.5.0
export MAKE_THREADS=28

rez-env jbigkit cmake-3.16 devtoolset-7 -c ./_rezbuild_.sh
