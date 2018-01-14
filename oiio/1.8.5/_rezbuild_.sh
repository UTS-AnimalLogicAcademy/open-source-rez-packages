#! /bin/bash

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd oiio-Release-1.8.5
mkdir build
cd build

#cmake .. # how does this not require the installatin prefix?
cmake -DCMAKE_PREFIX_PATH=$REZ_QT_ROOT/5.6/gcc_64/lib/cmake/Qt5Gui ..

make -j$MAKE_THREADS
make install -j$MAKE_THREADS

cd ../..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION
