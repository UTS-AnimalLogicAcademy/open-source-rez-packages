# -*- coding: utf-8 -*-

name = 'pybind11'

version = '2.2.1'

requires = ['boost', 'devtoolset-6']

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('PYTHONPATH', '{root}/lib/python2.7/site-packages')
    setenv('pybind11_DIR', '{root}/share/cmake/pybind11')


