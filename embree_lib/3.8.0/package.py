# -*- coding: utf-8 -*-

name = 'embree_lib'

version = '3.8.0'

build_requires = ['devtoolset','cmake-3']

requires = ['tbb-2020.3', 'ispc', 'oiio-2.4']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    setenv('EMBREE_LOCATION', '{root}')



