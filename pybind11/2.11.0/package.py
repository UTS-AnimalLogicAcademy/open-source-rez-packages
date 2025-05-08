# -*- coding: utf-8 -*-

name = 'pybind11'

version = '2.11.0.1'

private_build_requires=['devtoolset-11+', 'cmake-3']

requires = ['platform-linux', 'arch-x86_64','python-3.11']

variants = [['boost-1.82'], ['boost_katana-1.82']]

def commands():
    appendenv('PYTHONPATH', '{root}/lib/python3.11/site-packages')
    setenv('pybind11_DIR', '{root}/share/cmake/pybind11')
    setenv('pybind11_ROOT', '{root}')


