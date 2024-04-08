# -*- coding: utf-8 -*-

name = 'pybind11'

version = '2.9.1.3'

private_build_requires=['devtoolset-9+', 'cmake-3.16']

requires = ['platform-linux', 'arch-x86_64','python-3.9']

variants = [['boost-1.76'], ['boost_katana-1.76']]

def commands():
    appendenv('PYTHONPATH', '{root}/lib/python3.9/site-packages')
    setenv('pybind11_DIR', '{root}/share/cmake/pybind11')
    setenv('pybind11_ROOT', '{root}')


