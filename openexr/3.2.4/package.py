# -*- coding: utf-8 -*-

name = 'openexr'

version = '3.2.4'

build_requires = [
            'cmake-3', 'devtoolset'
           ]

requires=['Imath']

variants = [['platform-linux', 'arch-x86_64', 'python-3.11']]

def commands():
    appendenv('PATH', '{root}/bin/')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig/')
    setenv('OPENEXR_ROOT', '{root}')
    setenv('OpenEXR_DIR', '{root}')


