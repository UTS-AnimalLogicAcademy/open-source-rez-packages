#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=rawtoaces
export PACKAGE_VERSION=1.0.3
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ boost-1.80 aces_container openexr ceres_solver -c './_rezbuild_.sh'
