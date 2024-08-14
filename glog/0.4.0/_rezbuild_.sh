#! /bin/bash

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd glog-0.4.0
mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION -DBUILD_SHARED_LIBS=ON ..

cmake --build .
cmake --build . --target install

cd ../..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION