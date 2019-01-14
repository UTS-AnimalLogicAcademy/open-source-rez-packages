# -*- coding: utf-8 -*-

name = 'jemalloc'

version = '5.1.0'

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    appendenv('PATH', '{root}/bin/')


