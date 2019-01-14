# -*- coding: utf-8 -*-

name = 'jemalloc'

version = '4.5.0'

def commands():
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    appendenv('PATH', '{root}/bin/')


