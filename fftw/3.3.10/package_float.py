# -*- coding: utf-8 -*-

name = 'fftwf'

version = '3.3.10'

build_requires = ['cmake-3','devtoolset-7+']

def commands():
    appendenv('PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    setenv('FFTWF_HOME','{root}')


