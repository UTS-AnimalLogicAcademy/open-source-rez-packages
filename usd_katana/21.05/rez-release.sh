#! /bin/bash

source version.sh

export CC=/opt/rh/devtoolset-6/root/bin/gcc
export CXX=/opt/rh/devtoolset-6/root/bin/g++

# this will build (if not built already) and release to the configured rez release location
# the extra flags are because we are not developing this code with git, we're just building
# someone else's code.  
rez-release --ignore-existing-tag --skip-repo-errors --no-latest --no-message
