# -*- coding: utf-8 -*-

name = 'ptex'

version = '2.4.2'

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    setenv('PTEX_LOCATION', '{root}')

