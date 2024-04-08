#! /bin/bash

wget https://github.com/pybind/pybind11/archive/v2.2.1.tar.gz
tar -xvf v2.2.1.tar.gz

rm pybind11-2.2.1/tools/pybind11Tools.cmake
cp patch/pybind11Tools.cmake pybind11-2.2.1/tools/pybind11Tools.cmake