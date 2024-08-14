# -*- coding: utf-8 -*-

name = 'opensubdiv'

version = '3.6.0'

build_requires = ['cmake-3', 'devtoolset-11+']

requires = ['tbb-2020.3', 'ptex-2.4', 'clew', 'platform-linux', 'arch-x86_64']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PATH', '{root}/bin/')
    setenv('OPENSUBDIV_ROOT_DIR', '{root}')
    setenv('OPENSUBDIV_INCLUDE_DIR', '{root}/include')
