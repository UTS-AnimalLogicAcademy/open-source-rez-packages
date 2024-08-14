# -*- coding: utf-8 -*-

name = 'little_cms'

version = '2.16'

private_build_requires = ['devtoolset-7+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
    appendenv('PATH', '{root}/bin')
