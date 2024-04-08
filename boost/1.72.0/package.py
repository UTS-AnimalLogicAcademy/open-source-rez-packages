# -*- coding: utf-8 -*-

name = 'boost'

version = '1.72.1'

variants = [['python-2.7'],['python-3.7'],['python-3.10']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('BOOST_ROOT', '{root}')


