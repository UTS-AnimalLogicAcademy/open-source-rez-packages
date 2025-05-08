# -*- coding: utf-8 -*-

name = 'rawtoaces'

version = '1.0.4'

private_build_requires = ['cmake-3', 'devtoolset-7+']

build_requires = ['python-3.11']

requires = ['boost-1.82','aces_container','openexr', 'ceres_solver', 'os-RedHatEnterprise-9+']

tools = ['rawtoaces']

def commands():
    appendenv('PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')


