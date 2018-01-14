# -*- coding: utf-8 -*-

name = 'opensubdiv'

version = '3.2.0'

requires = ['tbb']

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PATH', '{root}/bin/')
    setenv('OPENSUBDIV_ROOT_DIR', '{root}')
