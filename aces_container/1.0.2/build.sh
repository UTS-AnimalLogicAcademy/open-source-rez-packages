#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=aces_container
export PACKAGE_VERSION=1.0.2
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ -c './_rezbuild_.sh'