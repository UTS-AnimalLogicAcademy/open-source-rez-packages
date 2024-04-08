#! /bin/bash

tar -xvf v2.4.1.tar.gz
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=pyilmbase
export PACKAGE_VERSION=2.4.1
export MAKE_THREADS=28

#rm pyilmbase-2.2.0/PyImath/imathmodule.cpp
#cp patch/imathmodule.cpp pyilmbase-2.2.0/PyImath/imathmodule.cpp

# build first variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.55
rez-env ilmbase-2.4.1 boost-1.55 cmake-3.12 devtoolset-7 python-2 -c ./_rezbuild_.sh

# clean up
rm -rf openexr-2.4.1
tar -xvf v2.4.1.tar.gz

# build second variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.61
rez-env ilmbase-2.4.1 boost-1.61 cmake-3.12 devtoolset-7 python-2 -c ./_rezbuild_.sh

# clean up
rm -rf openexr-2.4.1
tar -xvf v2.4.1.tar.gz

# build third variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.70
rez-env ilmbase-2.4.1 boost-1.70 cmake-3.12 devtoolset-7 python-2 -c ./_rezbuild_1.70_.sh

# clean up
rm -rf openexr-2.4.1
tar -xvf v2.4.1.tar.gz

# build fourth variant
#export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost_katana-1.70
#rez-env ilmbase boost_katana-1.70 -c ./_rezbuild_1.70_.sh

# clean up
rm -rf openexr-2.4.1
tar -xvf v2.4.1.tar.gz

# build fifth variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.72
rez-env ilmbase-2.4.1 boost-1.72 cmake-3.12 devtoolset-7 python-2 -c ./_rezbuild_1.70_.sh

# clean up
rm -rf openexr-2.4.1
tar -xvf v2.4.1.tar.gz

# build sixth variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.76
rez-env ilmbase-2.4.1 boost-1.76 cmake-3.12 devtoolset-7 python-2 -c ./_rezbuild_1.70_.sh

# clean up
rm -rf openexr-2.4.1
tar -xvf v2.4.1.tar.gz

# build seventh variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.66
rez-env ilmbase-2.4.1 boost-1.66 cmake-3.12 devtoolset-7 python-2 -c ./_rezbuild_.sh