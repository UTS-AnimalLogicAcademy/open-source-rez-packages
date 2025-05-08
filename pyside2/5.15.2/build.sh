#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages #~/packages
export PACKAGE_NAME=pyside2
export PACKAGE_VERSION=5.15.2.1
export MAKE_THREADS=28


mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION -DPYTHON_EXECUTABLE=$REZ_PYTHON_ROOT/miniconda3/bin/python3.10 ../pyside-setup
make -j$MAKE_THREADS
make install -j$MAKE_THREADS

#python setup.py install --parallel=8 --build-tests

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
