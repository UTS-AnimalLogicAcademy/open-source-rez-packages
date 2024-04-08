#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

mkdir build
cd build

cmake ../embree-$VERSION -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION -DEMBREE_TBB_ROOT=$REZ_TBB_ROOT -DOPENIMAGEIO_ROOT=$REZ_OIIO_ROOT

make -j$MAKE_THREADS
make install -j$MAKE_THREADS

cd ..

cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION