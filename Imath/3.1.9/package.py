# -*- coding: utf-8 -*-

name = 'Imath'

version = '3.1.9.4'

build_requires = ['cmake-3.16+', 'devtoolset']

variants = [['python-3.9', 'boost-1.72', 'numpy-1.20'], ['python-3.9', 'boost_katana-1.76', 'numpy-1.20'], ['python-3.9', 'boost-1.76', 'numpy-1.20'], ['python-3.10', 'boost-1.72'], ['python-3.10', 'boost-1.80'], ['python-3.11', 'boost-1.82', 'numpy-1.24'], ['python-3.11', 'boost_katana-1.82', 'numpy-1.24']]

def commands():
    env.LD_LIBRARY_PATH.append('{this.root}/lib64')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig/')
    env.Imath_DIR.set('{root}/lib64/cmake/Imath')
    env.IMATH_ROOT_DIR.set('{root}')
