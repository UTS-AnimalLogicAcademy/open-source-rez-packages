# -*- coding: utf-8 -*-

name = 'boost'

version = '1.80.0.1'

build_requires = ['python-3.10', 'devtoolset']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('BOOST_ROOT', '{root}')


