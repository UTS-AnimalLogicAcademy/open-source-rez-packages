#! /bin/bash

source version.sh

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=nasm
export PACKAGE_VERSION=$VERSION
export MAKE_THREADS=28

rez-env devtoolset-9 -c ./_rezbuild_.sh
