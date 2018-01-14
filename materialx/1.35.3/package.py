# -*- coding: utf-8 -*-

name = 'materialx'

version = '1.35.3'

requires = [
            'pybind11-2.2.1'
           ]

variants = [['platform-linux', 'arch-x86_64']]

build_requires = ['cmake-3.2']

#def commands():
#    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
#    appendenv('PATH', '{root}/bin/')

