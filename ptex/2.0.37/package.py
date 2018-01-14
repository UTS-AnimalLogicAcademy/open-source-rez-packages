# -*- coding: utf-8 -*-

name = 'ptex'

version = '2.0.37'

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    setenv('PTEX_LOCATION', '{root}')

