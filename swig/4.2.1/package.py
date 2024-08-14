# -*- coding: utf-8 -*-

name = 'swig'

version = '4.2.1'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['bison-3']

tools = ['swig']

def commands():
    appendenv('PATH','{root}/bin')
