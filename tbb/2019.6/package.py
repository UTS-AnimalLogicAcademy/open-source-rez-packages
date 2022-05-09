# -*- coding: utf-8 -*-

name = 'tbb'

version = '2019.6'

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/intel64/gcc4.8')
    env.TBB_LIBRARIES.set('{root}/lib/intel64/gcc4.8')


