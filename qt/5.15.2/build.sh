#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=qt
export PACKAGE_VERSION=5.15.2.1
export MAKE_THREADS=28


mkdir build
mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd build
OPENSSL_LIBS="-l$OPENSSL_ROOT/lib/libssl.a -l$OPENSSL_ROOT/lib/libcrypto.a" ../qt5/configure -opensource -confirm-license -prefix $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION -openssl-linked -L$OPENSSL_ROOT/lib -I$OPENSSL_ROOT/include -recheck
make -j$MAKE_THREADS
make install -j$MAKE_THREADS
