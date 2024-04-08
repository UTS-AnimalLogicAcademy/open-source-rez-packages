#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=pugixml
export PACKAGE_VERSION=1.13
export MAKE_THREADS=28

rez-env cmake-3.16+ devtoolset-7+ -c './_rezbuild_.sh'