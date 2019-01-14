#! /bin/bash

source version.sh

wget https://github.com/jemalloc/jemalloc/releases/download/$VERSION/jemalloc-$VERSION.tar.bz2

tar -xvf jemalloc-$VERSION.tar.bz2

