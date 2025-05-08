#! /bin/bash

wget https://github.com/pybind/pybind11/archive/refs/tags/v2.11.0.tar.gz
tar -xvf v2.11.0.tar.gz

# rm -rf pybind11-2.11.0/CMakeLists.txt
# cp patch/CMakeLists.txt pybind11-2.11.0/CMakeLists.txt