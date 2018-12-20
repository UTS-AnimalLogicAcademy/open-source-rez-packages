# -*- coding: utf-8 -*-

name = 'cppzmq'

version = '4.3.0'

requires = [
            'libzmq'
           ]

variants = [['platform-linux', 'arch-x86_64']]

build_requires = ['cmake-3.6']

#def commands():
#    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
#    appendenv('PATH', '{root}/bin/')

