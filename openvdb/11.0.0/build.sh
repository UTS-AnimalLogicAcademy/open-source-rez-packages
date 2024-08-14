#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=openvdb
export PACKAGE_VERSION=11.0.0
export MAKE_THREADS=28

rez-env blosc boost-1.82 tbb-2020.3 openexr-3.2 pybind11 python-3.11 cmake-3 devtoolset-11+ -c './_rezbuild_.sh'