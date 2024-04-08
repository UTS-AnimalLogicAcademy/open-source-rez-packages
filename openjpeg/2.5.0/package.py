# -*- coding: utf-8 -*-

name = 'openjpeg'

version = '2.5.0'

build_requires = ['cmake-3.16', 'devtoolset-9']

requires = ['jbigkit']

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PATH', '{root}/bin')


