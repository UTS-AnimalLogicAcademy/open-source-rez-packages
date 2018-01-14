# -*- coding: utf-8 -*-

name = 'ilmbase'

version = '2.2.0'

build_requires = [
            'cmake',
            'utsala_cmake_modules'
           ]

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('ILMBASE_ROOT', '{root}')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig/')


