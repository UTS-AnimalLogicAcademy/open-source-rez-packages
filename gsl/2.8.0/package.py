# -*- coding: utf-8 -*-

name = 'gsl'

version = '2.8.0'

private_build_requires = ['cmake-3', 'devtoolset-7+']

def commands():
    appendenv('PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
    setenv('GSL_ROOT', '{root}')
