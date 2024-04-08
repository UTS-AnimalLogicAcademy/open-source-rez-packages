# -*- coding: utf-8 -*-

name = 'openexr'

version = '3.1.11'

build_requires = [
            'cmake-3.16', 'devtoolset-9'
           ]

requires=['Imath']

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('PATH', '{root}/bin/')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig/')
    setenv('OPENEXR_ROOT', '{root}')
    setenv('OpenEXR_DIR', '{root}')


