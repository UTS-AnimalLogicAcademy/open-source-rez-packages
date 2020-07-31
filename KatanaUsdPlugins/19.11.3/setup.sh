#! /bin/bash

source version.sh

wget https://github.com/TheFoundryVisionmongers/KatanaUsdPlugins/archive/v$BUILD_VERSION.tar.gz
tar -xvf v$BUILD_VERSION.tar.gz
