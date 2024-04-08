#! /bin/bash
source version.sh

wget https://github.com/jbeder/yaml-cpp/archive/refs/tags/$VERSION.tar.gz
tar -xvf $VERSION.tar.gz

