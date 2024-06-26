#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=jbigkit
export PACKAGE_VERSION=2.1
export MAKE_THREADS=28

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd jbigkit-2.1

#cmake .. # how does this not require the installatin prefix?
#cmake -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION ..

make -j$MAKE_THREADS
make test
# make install -j$MAKE_THREADS DESTDIR=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cp -R libjbig $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION
# cp pbmtools $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION
