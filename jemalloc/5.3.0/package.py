# -*- coding: utf-8 -*-

name = 'jemalloc'

version = '5.3.0'

build_requires=['devtoolset']

def commands():
    env.LD_PRELOAD.append('{root}/lib/libjemalloc.so.1')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    appendenv('PATH', '{root}/bin/')


