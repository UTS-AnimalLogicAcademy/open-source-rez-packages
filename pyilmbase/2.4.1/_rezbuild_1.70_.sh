#! /bin/bash

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT/

rm -rf build
mkdir build
cd build
cmake -DCMAKE_SYSTEM_PREFIX=$ILMBASE_ROOT \
      -DCMAKE_INSTALL_PREFIX=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT/ \
      -DIlmBase_DIR=$ILMBASE_ROOT/lib64/cmake/IlmBase \
      --with-boost-python-libname=boost_python27 \
      ../openexr-$PACKAGE_VERSION/PyIlmBase
cmake --build . --target install --config Release 
cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/
