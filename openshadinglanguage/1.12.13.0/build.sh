#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages #/mnt/ala/software/ext_packages
export PACKAGE_NAME=openshadinglanguage
export PACKAGE_VERSION=1.12.13.1
export MAKE_THREADS=28

rez-env oiio-2.4 llvm boost-1.80 openexr-3 Imath python-3.10 flex bison pugixml cmake-3.16 devtoolset-9 -c ./_rezbuild_.sh
