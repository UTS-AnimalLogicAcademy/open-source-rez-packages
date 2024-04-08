#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=openvdb
export PACKAGE_VERSION=10.1.0
export MAKE_THREADS=28

rez-env blosc boost-1.80 tbb-2020.3 openexr-3.1 pybind11 python-3.10 cmake-3 devtoolset-7+ -c './_rezbuild_.sh'