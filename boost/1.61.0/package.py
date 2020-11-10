# -*- coding: utf-8 -*-

name = 'boost'

version = '1.61.0'

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('BOOST_ROOT', '{root}')
    appendenv('BOOSTROOT', '{root}')

