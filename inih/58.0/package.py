# -*- coding: utf-8 -*-

name = 'inih'

version = '58.0'

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
    setenv('inih_ROOT', '{root}')
    setenv('inih_INCLUDE_DIR', '{root}')
    setenv('inih_LIB_DIR', '{root}')
