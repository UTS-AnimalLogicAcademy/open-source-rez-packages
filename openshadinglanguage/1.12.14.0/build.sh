#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=openshadinglanguage
export PACKAGE_VERSION=1.12.14.1
export MAKE_THREADS=28

rez-env oiio-2.4 llvm boost-1.82 openexr-3.2 Imath python-3.11 flex bison pugixml cmake-3 devtoolset-9+ -c ./_rezbuild_.sh
