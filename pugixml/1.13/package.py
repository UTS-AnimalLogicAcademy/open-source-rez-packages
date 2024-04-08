# -*- coding: utf-8 -*-

name = 'pugixml'

version = '1.13'

private_build_requires = ['cmake-3.16+', 'devtoolset-7+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig')


