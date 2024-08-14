#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=exiftool
export PACKAGE_VERSION=12.85
export MAKE_THREADS=28

rez-env devtoolset-7+ -c './_rezbuild_.sh'