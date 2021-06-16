#! /bin/bash

source version.sh

wget https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/refs/tags/v$BUILD_VERSION.zip
unzip v$BUILD_VERSION.zip
