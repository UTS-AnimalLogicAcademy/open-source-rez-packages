# -*- coding: utf-8 -*-

name = 'enblend'

version = '4.2'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['gsl', 'boost-1.80', 'vigra', 'openexr-2.2']

tools = ['enblend', 'enfuse']

def commands():
    appendenv('PATH','{root}/bin')
