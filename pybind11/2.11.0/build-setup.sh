#! /bin/bash
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=pybind11
export PACKAGE_VERSION=2.11.0.0
export MAKE_THREADS=28

export VARIANT=boost-1.82
rez-env boost-1.82 devtoolset-11 cmake-3 python-3.11 -c ./build.sh
