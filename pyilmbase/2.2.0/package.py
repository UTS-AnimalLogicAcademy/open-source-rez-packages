# -*- coding: utf-8 -*-

name = 'pyilmbase'

version = '2.2.0'

requires = ['ilmbase-2.2.0',
            'boost-1.55'
           ]

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig/')
    appendenv('PYTHONPATH', '{root}/lib64/python2.7/site-packages')
