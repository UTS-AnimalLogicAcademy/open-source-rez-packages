#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=pybind11
export PACKAGE_VERSION=2.9.0
export MAKE_THREADS=28

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib/python2.7/site-packages

cd pybind11-2.9.0

export PYTHONPATH=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/lib/python2.7/site-packages
python setup.py install --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION ..

make -j$MAKE_THREADS
make install -j$MAKE_THREADS

cd ../..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION


