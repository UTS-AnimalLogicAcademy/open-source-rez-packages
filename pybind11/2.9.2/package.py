# -*- coding: utf-8 -*-

name = 'pybind11'

version = '2.9.2'

private_build_requires=['cmake-3']

requires = ['platform-linux', 'arch-x86_64','python-3.10', 'os-RedHatEnterprise-9+']

variants = [['boost-1.80']]

def commands():
    appendenv('PYTHONPATH', '{root}/lib/python3.10/site-packages')
    setenv('pybind11_DIR', '{root}/share/cmake/pybind11')
    setenv('pybind11_ROOT', '{root}')


