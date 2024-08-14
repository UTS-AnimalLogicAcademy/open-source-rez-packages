# -*- coding: utf-8 -*-

name = 'openblas'

version = '0.3.27'

private_build_requires = ['cmake-3', 'devtoolset-7+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig')


