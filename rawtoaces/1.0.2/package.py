# -*- coding: utf-8 -*-

name = 'rawtoaces'

version = '1.0.2'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['boost-1.80','aces_container','openexr', 'ceres_solver']

tools = ['rawtoaces']

def commands():
    appendenv('PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')


