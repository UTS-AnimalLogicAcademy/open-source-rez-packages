# -*- coding: utf-8 -*-

name = 'clew'

version = '0.4.3'

def commands():
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.CLEW_INCLUDE_DIR.append('{this.root}/include')
    env.CLEW_LIBRARY.append('{this.root}/lib')
    env.CLEW_LOCATION.append('{this.root}')
