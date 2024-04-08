# -*- coding: utf-8 -*-

name = 'bison'

version = '3.8.2'

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PATH', '{root}/bin')


