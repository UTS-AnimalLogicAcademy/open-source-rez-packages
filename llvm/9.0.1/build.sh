#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=llvm
export PACKAGE_VERSION=9.0.1
export MAKE_THREADS=28


mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

mkdir build

cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" ../llvm-project/llvm
cmake --build .
cmake -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION -P cmake_install.cmake
#make -j$MAKE_THREADS
#make install -j$MAKE_THREADS
#mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib64/python3.9/site-packages
#mv $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/PySide $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib64/python2.7/site-packages
#cd ../..

#mkdir Tools-0.2.15/build
#cd Tools-0.2.15/build
#cmake ..
#make -j$MAKE_THREADS
#make install -j$MAKE_THREADS

cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION
