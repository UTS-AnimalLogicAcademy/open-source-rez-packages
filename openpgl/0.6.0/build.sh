#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

mkdir build
cd build

cmake ../openpgl-$VERSION -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION -DTBB_ROOT=$REZ_TBB_ROOT -DBUILD_SHARED_LIBS=TRUE

cmake --build . --target install

cd ..

cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION