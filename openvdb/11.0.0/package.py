# -*- coding: utf-8 -*-

name = 'openvdb'

version = '11.0.0'

private_build_requires = ['cmake-3', 'devtoolset-11+']

requires = ['blosc', 'boost-1.82', 'tbb-2020.3', 'openexr-3.2', 'pybind11', 'python-3.11']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')
    setenv('OPENVDB_LOCATION', '{root}')
