# -*- coding: utf-8 -*-

name = 'libraw'

version = '0.20.2'

private_build_requires = ['cmake-3', 'devtoolset-7+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
    setenv('libraw_ROOT', '{root}')
    setenv('libraw_DIR', '{root}')
