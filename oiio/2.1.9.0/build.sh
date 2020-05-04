#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=2.1.9.0
export MAKE_THREADS=28

rez-env qt-5 boost cmake openexr ilmbase ocio ffmpeg -c ./_rezbuild_.sh
