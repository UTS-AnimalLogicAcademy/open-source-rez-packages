# -*- coding: utf-8 -*-

name = 'fftw'

version = '3.3.10'

def commands():
    appendenv('PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')



