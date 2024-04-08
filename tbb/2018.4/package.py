# -*- coding: utf-8 -*-

name = 'tbb'

version = '2018.4'

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/intel64/gcc4.7')
    env.TBBROOT.set('{root}')
    env.TBB_LIBRARIES.set('{root}/lib/intel64/gcc4.7')
    env.TBB_INCLUDE_DIR.set('{root}/include')


