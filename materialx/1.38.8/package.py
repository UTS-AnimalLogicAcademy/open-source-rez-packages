# -*- coding: utf-8 -*-

name = 'materialx'

version = '1.38.8.1'

requires = ['pybind11']

variants = [['platform-linux', 'arch-x86_64', 'python-3.11']]

private_build_requires = ['cmake-3.12+', 'devtoolset-7+']

#def commands():
#    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
#    appendenv('PATH', '{root}/bin/')

