#! /bin/bash

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT

cd openexr-3.2.4

#./configure --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION
cmake . -DCMAKE_PREFIX_PATH=$REZ_IMATH_ROOT -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT
make -j$MAKE_THREADS
make install -j$MAKE_THREADS

ln -s $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT/lib64 $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT/lib

cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

# apparently this is necessary, as some packages assume ilmbase and openexr headers/libs live together (usd, katana plugins)
#cp -s /mnt/ala/software/ext_packages/ilmbase/$PACKAGE_VERSION/include/OpenEXR/* /mnt/ala/software/ext_packages/$PACKAGE_NAME/$PACKAGE_VERSION/include/OpenEXR
#cp -s /mnt/ala/software/ext_packages/ilmbase/$PACKAGE_VERSION/lib/* /mnt/ala/software/ext_packages/$PACKAGE_NAME/$PACKAGE_VERSION/lib
