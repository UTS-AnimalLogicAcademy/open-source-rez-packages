#! /bin/bash
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=pybind11
export PACKAGE_VERSION=2.9.1.3
export MAKE_THREADS=28

export VARIANT=/boost-1.76
rez-env boost-1.76 devtoolset-9 cmake-3.16 python-3.9 platform-linux arch-x86_64 -c ./build.sh

rm -rf pybind11-2.9.1/build

export VARIANT=/boost_katana-1.76
rez-env boost_katana-1.76 devtoolset-9 cmake-3.16 python-3.9 platform-linux arch-x86_64 -c ./build.sh