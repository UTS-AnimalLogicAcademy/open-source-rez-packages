#! /usr/bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=opensubdiv
export PACKAGE_VERSION=3.4.3
export MAKE_THREADS=28

rez-env cmake-3.2 tbb ptex clew -c ./_rezbuild_.sh
