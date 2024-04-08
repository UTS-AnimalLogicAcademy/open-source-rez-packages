# -*- coding: utf-8 -*-

name = 'ilmbase'

version = '2.4.1'

build_requires = [
            'cmake'
           ]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('ILMBASE_ROOT', '{root}')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig/')


