# -*- coding: utf-8 -*-

name = 'yaml_cpp'

version = '0.8.0'

build_requires = ['devtoolset-11','cmake-3']

def commands():
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')



