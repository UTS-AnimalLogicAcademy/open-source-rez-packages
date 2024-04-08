# -*- coding: utf-8 -*-

name = 'pybind11'

version = '2.9.0'

requires = ['platform-linux', 'arch-x86_64', 'boost', 'devtoolset-9', 'cmake-3.16', 'python-2.7']

def commands():
    appendenv('PYTHONPATH', '{root}/lib/python2.7/site-packages')
    setenv('pybind11_DIR', '{root}/share/cmake/pybind11')
    setenv('pybind11_ROOT', '{root}')


