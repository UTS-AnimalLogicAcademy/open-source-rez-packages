#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=Imath
export PACKAGE_VERSION=3.1.9.4
export MAKE_THREADS=28

export PACKAGE_VARIANT=python-3.9/boost-1.72/numpy-1.20
rez-env cmake-3.16 devtoolset-9 python-3.9 boost-1.72 numpy-1.20 -c ./_rezbuild_.sh

./clean.sh
./setup.sh

# Add patch to replace boost namespace with foundryboost for boost_katana
rm Imath-3.1.9/src/python/PyImath/PyImathStringTable.h
cp patch/PyImathStringTable.h Imath-3.1.9/src/python/PyImath/PyImathStringTable.h

export PACKAGE_VARIANT=python-3.9/boost_katana-1.76/numpy-1.20
rez-env cmake-3.16 devtoolset-9 python-3.9 boost_katana-1.76 numpy-1.20 -c ./_rezbuild_.sh

./clean.sh
./setup.sh

export PACKAGE_VARIANT=python-3.9/boost-1.76/numpy-1.20
rez-env cmake-3.16 devtoolset-9 python-3.9 boost-1.76 numpy-1.20 -c ./_rezbuild_.sh

./clean.sh
./setup.sh

export PACKAGE_VARIANT=python-3.10/boost-1.72
rez-env cmake-3.16 devtoolset-11 python-3.10 boost-1.72 -c ./_rezbuild_.sh

./clean.sh
./setup.sh

export PACKAGE_VARIANT=python-3.10/boost-1.80
rez-env cmake-3.16 devtoolset-11 python-3.10 boost-1.80 -c ./_rezbuild_.sh

./clean.sh
./setup.sh

export PACKAGE_VARIANT=python-3.11/boost-1.82/numpy-1.24
rez-env cmake-3 devtoolset-11 python-3.11 boost-1.82 numpy-1.24 -c ./_rezbuild_.sh

./clean.sh
./setup.sh

# Add patch to replace boost namespace with foundryboost for boost_katana
rm Imath-3.1.9/src/python/PyImath/PyImathStringTable.h
cp patch/PyImathStringTable.h Imath-3.1.9/src/python/PyImath/PyImathStringTable.h

export PACKAGE_VARIANT=python-3.11/boost_katana-1.82/numpy-1.24
rez-env cmake-3 devtoolset-11 python-3.11 boost_katana-1.82 numpy-1.24 -c ./_rezbuild_.sh