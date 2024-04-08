#! /bin/bash

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$VARIANT/lib/python3.9/site-packages

cd pybind11-2.9.1

export PYTHONPATH=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$VARIANT/lib/python3.9/site-packages
python setup.py install --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$VARIANT/

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$VARIANT ..

make -j$MAKE_THREADS
make install -j$MAKE_THREADS

cd ../..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

