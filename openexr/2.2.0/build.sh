#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=openexr
export PACKAGE_VERSION=2.2.0
export MAKE_THREADS=28

rez-env ilmbase-2.2.0 -c ./_rezbuild_.sh
