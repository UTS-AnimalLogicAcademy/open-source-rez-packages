#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=pyside
export PACKAGE_VERSION=1.2.4
export MAKE_THREADS=28


mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

mkdir PySide-1.2.4/build
cd PySide-1.2.4/build
cmake ..
make -j$MAKE_THREADS
make install -j$MAKE_THREADS
mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib64/python2.7/site-packages
mv $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/PySide $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib64/python2.7/site-packages
cd ../..

mkdir Tools-0.2.15/build
cd Tools-0.2.15/build
cmake ..
make -j$MAKE_THREADS
make install -j$MAKE_THREADS

cd ../..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION
