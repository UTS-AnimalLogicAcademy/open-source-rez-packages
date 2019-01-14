#! /bin/bash

source version.sh

wget https://github.com/jemalloc/jemalloc/releases/download/5.1.0/jemalloc-$VERSION.tar.bz2

tar -xvf jemalloc-$VERSION.tar.bz2

