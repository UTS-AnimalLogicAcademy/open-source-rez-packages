# -*- coding: utf-8 -*-

name = 'blosc'

version = '1.17.0'

private_build_requires = ['cmake-3', 'devtoolset-7+', 'python']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')


