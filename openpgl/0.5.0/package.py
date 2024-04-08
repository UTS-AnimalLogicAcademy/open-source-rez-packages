# -*- coding: utf-8 -*-

name = 'openpgl'

version = '0.5.0'

build_requires = ['devtoolset-11', 'cmake-3']

requires = ['tbb-2020.3', 'embree_lib']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('LIBRARY_PATH', '{root}/lib64/')


