# -*- coding: utf-8 -*-

name = 'aces_container'

version = '1.0.2'

private_build_requires = ['cmake-3', 'devtoolset-7+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
    setenv('AcesContainer_ROOT', '{root}')
    setenv('AcesContainer_DIR', '{root}/lib/CMake/AcesContainer')
