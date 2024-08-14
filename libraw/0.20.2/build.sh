#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages #/mnt/ala/software/ext_packages
export PACKAGE_NAME=libraw
export PACKAGE_VERSION=0.20.2
export MAKE_THREADS=28

rez-env cmake-3 devtoolset-7+ -c './_rezbuild_.sh'