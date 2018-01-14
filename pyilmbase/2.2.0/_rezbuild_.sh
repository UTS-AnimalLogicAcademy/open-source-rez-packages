#! /bin/bash

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd pyilmbase-2.2.0

./configure --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION --with-boost-include-dir=$BOOST_ROOT/include --with-boost-lib-dir=$BOOST_ROOT/lib --with-boost-python-libname=boost_python

make-j$MAKE_THREADS

# multi threaded make install will cause errors
make install

cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION
