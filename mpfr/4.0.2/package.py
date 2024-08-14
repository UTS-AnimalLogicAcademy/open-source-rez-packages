# -*- coding: utf-8 -*-

name = 'mpfr'

version = '4.0.2'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['gmp-6.1.2']

def commands():
    setenv('MPFR_ROOT', '{root}')
    setenv('MPFR_DIR', '{root}')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
