#! /bin/bash

source version.sh

wget wget https://github.com/assimp/assimp/archive/refs/tags/v$VERSION.tar.gz
tar -xvf v$VERSION.tar.gz

mv assimp-$VERSION assimp