# -*- coding: utf-8 -*-

name = 'libjpegturbo'

version = '2.1.5.1'

build_requires = ['cmake-3.16', 'devtoolset-9']

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PATH', '{root}/bin')


