# -*- coding: utf-8 -*-

name = 'tbb'

version = '2020.3'

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/intel64/gcc4.8')
    env.TBB_LOCATION.set('{root}')
    env.TBBROOT.set('{root}')
    env.TBB_LIBRARIES.set('{root}/lib/intel64/gcc4.8')
    env.TBB_INCLUDE_DIR.set('{root}/include')


