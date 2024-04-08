# -*- coding: utf-8 -*-

name = 'flex'

version = '2.6.4'

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PATH', '{root}/bin')


