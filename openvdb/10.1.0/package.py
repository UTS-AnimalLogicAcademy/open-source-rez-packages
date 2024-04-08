# -*- coding: utf-8 -*-

name = 'openvdb'

version = '1.10.0'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['blosc', 'boost-1.80', 'tbb-2020.3', 'openexr-3.1', 'pybind11', 'python-3.10']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')
    setenv('OPENVDB_LOCATION', '{root}')
