# -*- coding: utf-8 -*-

name = 'eigen'

version = '3.3.9'

private_build_requires = ['cmake-3', 'devtoolset-7+']

def commands():
    setenv('Eigen3_ROOT', '{root}')
    setenv('Eigen3_DIR', '{root}')
    appendenv('PKG_CONFIG_PATH', '{root}/share/pkgconfig')
