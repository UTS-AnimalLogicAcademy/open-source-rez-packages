# -*- coding: utf-8 -*-

name = 'SuiteSparse'

version = '6.0.3.1'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['openblas', 'mpfr-4.0.2', 'os-RedHatEnterprise-8.10+']

def commands():
    setenv('SuiteSparse_ROOT', '{root}')
    setenv('SuiteSparse_DIR', '{root}/lib64/cmake/SuiteSparse')
    appendenv('PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
