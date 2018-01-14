#! /usr/bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=opensubdiv
export PACKAGE_VERSION=3.2.0
export MAKE_THREADS=28

rez-env cmake-3.2 tbb -c ./_rezbuild_.sh
