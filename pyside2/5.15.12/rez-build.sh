#! /bin/bash

# this will build and install the rez package locally (default is ~/packages)
rez env python-3.9 cmake-3 qt-5.15.12 llvm-9 openssl devtoolset-7 -c ./build.sh
