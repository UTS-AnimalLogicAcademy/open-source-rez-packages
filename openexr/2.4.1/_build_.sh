#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=openexr
export PACKAGE_VERSION=2.4.1
export MAKE_THREADS=28

echo $ILMBASE_ROOT
mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

mkdir build
cd build
cmake -DCMAKE_SYSTEM_PREFIX=$ILMBASE_ROOT \
      -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/ \
      -DIlmBase_DIR=$ILMBASE_ROOT/lib64/cmake/IlmBase \
      ../openexr-$PACKAGE_VERSION/OpenEXR
cmake --build . --target install --config Release 
cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/
