#! /bin/bash

source version.sh

wget https://github.com/google/googletest/archive/release-$BUILD_VERSION.zip
unzip release-$BUILD_VERSION.zip
