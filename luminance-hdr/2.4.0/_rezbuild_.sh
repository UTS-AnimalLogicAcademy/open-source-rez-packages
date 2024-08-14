#! /bin/bash

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd luminance-hdr-2.4.0
mkdir build_cmake
cd build_cmake

cmake -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION -DPC_EXIV2_INCLUDEDIR=$Exiv2_ROOT/include -DPC_EXIV2_LIBDIR=$Exiv2_ROOT/lib64 ..

cmake --build .
cmake --build . --target install

cd ../..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION