#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)
rez-env devtoolset -c './build.sh'