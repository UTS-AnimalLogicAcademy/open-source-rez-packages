#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages/
export PACKAGE_NAME=openexr
export PACKAGE_VERSION=3.1.11
export PACKAGE_VARIANT=platform-linux/arch-x86_64
export MAKE_THREADS=28

rez-env cmake-3.16 devtoolset-9 Imath -c ./_rezbuild_.sh
