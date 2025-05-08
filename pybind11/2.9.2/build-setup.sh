#! /bin/bash
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=pybind11
export PACKAGE_VERSION=2.9.2
export MAKE_THREADS=28

export VARIANT=/boost-1.80
rez-env boost-1.80 cmake-3 python-3.10 platform-linux arch-x86_64 -c ./build.sh
