#! /bin/bash

tar -xvf pyilmbase-2.2.0.tar.gz
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=pyilmbase
export PACKAGE_VERSION=2.2.0.3
export MAKE_THREADS=28

# build first variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.55
rez-env ilmbase boost-1.55 -c ./_rezbuild_.sh

# clean up
rm -rf pyilmbase-2.2.0
tar -xvf pyilmbase-2.2.0.tar.gz

# build second variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.61
rez-env ilmbase boost-1.61 -c ./_rezbuild_.sh

# clean up
rm -rf pyilmbase-2.2.0
tar -xvf pyilmbase-2.2.0.tar.gz

# build third variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.70
rez-env ilmbase boost-1.70 -c ./_rezbuild_1.70_.sh

# clean up
rm -rf pyilmbase-2.2.0
tar -xvf pyilmbase-2.2.0.tar.gz

# build fourth variant
export PACKAGE_VARIANT=platform-linux/arch-x86_64/boost-1.72
rez-env ilmbase boost-1.72 -c ./_rezbuild_1.70_.sh