#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=ceres_solver
export PACKAGE_VERSION=2.2.0.2
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ eigen-3.3 glog-0.4 SuiteSparse -c './_rezbuild_.sh'