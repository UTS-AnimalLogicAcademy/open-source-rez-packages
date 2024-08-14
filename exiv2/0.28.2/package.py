# -*- coding: utf-8 -*-

name = 'exiv2'

version = '0.28.2'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['python-3', 'brotli']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig')
    setenv('exiv2_ROOT', '{root}')
    setenv('Exiv2_ROOT', '{root}')
