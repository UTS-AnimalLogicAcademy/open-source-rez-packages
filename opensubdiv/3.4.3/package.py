# -*- coding: utf-8 -*-

name = 'opensubdiv'

version = '3.4.3'

requires = ['tbb', 'ptex', 'clew', 'platform-linux', 'arch-x86_64']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PATH', '{root}/bin/')
    setenv('OPENSUBDIV_ROOT_DIR', '{root}')
    setenv('OPENSUBDIV_INCLUDE_DIR', '{root}/include')
