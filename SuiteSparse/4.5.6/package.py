# -*- coding: utf-8 -*-

name = 'SuiteSparse'

version = '4.5.6'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['openblas']

def commands():
    setenv('SuiteSparse_ROOT', '{root}')
    setenv('SuiteSparse_DIR', '{root}')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
