# -*- coding: utf-8 -*-

name = 'brotli'

version = '1.1.0'

build_requires = ['devtoolset-11', 'cmake-3']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('LIBRARY_PATH', '{root}/lib64/')
    appendenv('PATH', '{root}/bin/')


