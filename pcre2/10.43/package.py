# -*- coding: utf-8 -*-

name = 'pcre2'

version = '10.43'

private_build_requires = ['cmake-3', 'devtoolset-7+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig')
    appendenv('PATH', '{root}/bin')
    setenv('PCRE2_DIR', '{root}/cmake')
    setenv('PCRE2_ROOT', '{root}')
