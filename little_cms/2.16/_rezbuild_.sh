#! /bin/bash

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd lcms2-2.16

./configure --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

make
make check
make install

cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION