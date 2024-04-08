# -*- coding: utf-8 -*-

name = 'freetype'

version = '2.11.1'

build_requires = ['devtoolset-11', 'cmake-3']

requires = ['brotli']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('LIBRARY_PATH', '{root}/lib64/')
    setenv('FREETYPE_DIR', '{root}')
