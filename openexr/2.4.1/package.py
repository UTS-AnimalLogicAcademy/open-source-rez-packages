# -*- coding: utf-8 -*-

name = 'openexr'

version = '2.4.1'

build_requires = [
            'cmake'
           ]

def commands():
    appendenv('PATH', '{root}/bin/')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig/')
    setenv('OPENEXR_ROOT', '{root}')


