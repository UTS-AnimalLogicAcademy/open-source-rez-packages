#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=dcmtk
export PACKAGE_VERSION=3.6.9
export MAKE_THREADS=28

rez-env cmake-3 -c './_rezbuild_.sh'