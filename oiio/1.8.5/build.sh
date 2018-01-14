#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=oiio
export PACKAGE_VERSION=1.8.5
export MAKE_THREADS=28

rez-env qt-5 boost cmake openexr ilmbase ocio ffmpeg -c ./_rezbuild_.sh
