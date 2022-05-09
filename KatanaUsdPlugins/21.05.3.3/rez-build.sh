#! /bin/bash

source version.sh

export CC=/opt/rh/devtoolset-6/root/bin/gcc
export CXX=/opt/rh/devtoolset-6/root/bin/g++

# this will build and install the rez package locally (default is ~/packages)
rez-build -i
