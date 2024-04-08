# -*- coding: utf-8 -*-

name = 'boost'

version = '1.70.0'

variants = ['python-2', 'python-3.7']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('BOOST_ROOT', '{root}')


