#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=little_cms
export PACKAGE_VERSION=2.16
export MAKE_THREADS=28

rez-env devtoolset-7+ -c './_rezbuild_.sh'