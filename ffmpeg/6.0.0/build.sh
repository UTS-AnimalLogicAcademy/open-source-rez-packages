#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages #~/packages
export PACKAGE_NAME=ffmpeg
export PACKAGE_VERSION=6.0.1.1
export PACKAGE_VARIANT=platform-linux/arch-x86_64
export MAKE_THREADS=28

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT

cd FFmpeg-n6.0.1
./configure --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT --enable-shared --cc="gcc -m64 -fPIC" --enable-gpl --enable-libx264
#./configure --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/$PACKAGE_VARIANT --enable-shared --cc="gcc -m64 -fPIC"
make -j$MAKE_THREADS
make install -j$MAKE_THREADS
cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION


