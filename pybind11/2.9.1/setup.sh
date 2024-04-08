#! /bin/bash

wget https://github.com/pybind/pybind11/archive/refs/tags/v2.9.1.tar.gz
tar -xvf v2.9.1.tar.gz

rm -rf pybind11-2.9.1/CMakeLists.txt
cp patch/CMakeLists.txt pybind11-2.9.1/CMakeLists.txt