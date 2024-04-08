#! /bin/bash

# this will build and install the rez package locally (default is ~/packages)
rez-env python-2 -c ./build.sh

rez-env python-3 -c ./build_python3.sh