# -*- coding: utf-8 -*-

name = 'gmp'

version = '6.1.2'

private_build_requires = ['cmake-3', 'devtoolset-7+']

def commands():
    setenv('GMP_ROOT', '{root}')
    setenv('GMP_DIR', '{root}')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
