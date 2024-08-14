# -*- coding: utf-8 -*-

name = 'libpano13'

version = '2.2.9'

private_build_requires = ['cmake-3', 'devtoolset-7+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
    appendenv('PATH', '{root}/bin')
