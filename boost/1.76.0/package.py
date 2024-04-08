# -*- coding: utf-8 -*-

name = 'boost'

version = '1.76.1'

variants = [['python-2.7'],['python-3.9']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('BOOST_ROOT', '{root}')


