# -*- coding: utf-8 -*-

name = 'imath'

version = '3.1.9.1'

build_requires = ['cmake-3.16', 'devtoolset']

variants = [['python-3.7'], ['python-3.9'], ['python-3.10']]

def commands():
    env.LD_LIBRARY_PATH.append('{this.root}/lib64')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig/')
    env.Imath_DIR.set('{root}/lib64/cmake/Imath')
