#! /bin/bash

source version.sh

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
#export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=jemalloc
export PACKAGE_VERSION=$VERSION
export MAKE_THREADS=28

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd $PACKAGE_NAME-$VERSION
./configure --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/
make -j$MAKE_THREADS
make install -j$MAKE_THREADS
cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/
