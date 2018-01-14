#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=pyilmbase
export PACKAGE_VERSION=2.2.0
export MAKE_THREADS=28

rez-env ilmbase boost-1.55 -c ./_rezbuild_.sh
