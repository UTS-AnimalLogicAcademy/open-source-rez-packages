# -*- coding: utf-8 -*-

name = 'gflags'

version = '2.2.3'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['os-RedHatEnterprise-8.10+']

def commands():
    setenv('gflags_ROOT', '{root}')
    setenv('gflags_DIR', '{root}')
    appendenv('PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
