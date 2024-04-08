#! /bin/bash

source version.sh

wget https://www.nasm.us/pub/nasm/releasebuilds/$VERSION/nasm-$VERSION.tar.gz
tar -xvf  nasm-$VERSION.tar.gz
