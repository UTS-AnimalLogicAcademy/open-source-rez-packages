#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=Imath
export PACKAGE_VERSION=3.1.9.1
export MAKE_THREADS=28

export PACKAGE_VARIANT=python-3.7
rez-env cmake-3.16 devtoolset-9 python-3.7 -c ./_rezbuild_.sh

./clean.sh
./setup.sh

export PACKAGE_VARIANT=python-3.9
rez-env cmake-3.16 devtoolset-9 python-3.9 -c ./_rezbuild_.sh

./clean.sh
./setup.sh

export PACKAGE_VARIANT=python-3.10
rez-env cmake-3.16 devtoolset-9 python-3.10 -c ./_rezbuild_.sh