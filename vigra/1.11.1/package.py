# -*- coding: utf-8 -*-

name = 'vigra'

version = '1.11.1'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['fftw-3', 'fftwf-3', 'boost-1.80', 'openexr-2.2', 'nose', 'python-3']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PATH', '{root}/bin')
