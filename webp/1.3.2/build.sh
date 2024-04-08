#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=webp
export PACKAGE_VERSION=$VERSION
export MAKE_THREADS=28

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd libwebp-$VERSION
./configure --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION --enable-shared
make -j$MAKE_THREADS
make install -j$MAKE_THREADS

cd ..

cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION