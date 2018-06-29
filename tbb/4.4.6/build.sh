#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=tbb
export PACKAGE_VERSION=4.4.6

# todo: get this information algorithmically
export BUILD_DIR=linux_intel64_gcc_cc4.8.5_libc2.17_kernel3.10.0_release
export LIB_SUFFIX=intel64/gcc4.8.5

export MAKE_THREADS=28

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib/$LIB_SUFFIX
mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/bin

# couldn't find a way to configure and specify a destination, so copy files around after build
cd tbb-4.4.6/src
make release -j$MAKE_THREADS
cd ..
cp -r include $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION
cp -r build/$BUILD_DIR/*.so $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib/$LIB_SUFFIX
cp -r build/$BUILD_DIR/*.so.2 $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib/$LIB_SUFFIX
cp -r build/$BUILD_DIR/*.sh $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/bin
cp -r build/$BUILD_DIR/*.csh $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/bin
cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

