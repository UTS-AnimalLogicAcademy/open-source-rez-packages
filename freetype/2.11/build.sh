#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

mkdir build
cd build

cmake ../freetype-2.11.1 -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION -DFT_REQUIRE_BROTLI=ON -DPC_BROTLIDEC_INCLUDEDIR=$REZ_BROTLI_ROOT/include -DPC_BROTLIDEC_LIBDIR=$REZ_BROTLI_ROOT/lib64 -DBUILD_SHARED_LIBS=TRUE

cmake --build . --target install

cd ..

cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION