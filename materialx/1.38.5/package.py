# -*- coding: utf-8 -*-

name = 'materialx'

version = '1.38.5.0'

requires = ['pybind11']

variants = [['platform-linux', 'arch-x86_64', 'python-3.10']]

private_build_requires = ['cmake-3.12+', 'devtoolset-7+']

def commands():
    env.LD_LIBRARY_PATH.append('{root}/lib')
    env.PATH.append('{root}/bin')
    env.CMAKE_PREFIX_PATH.append('{root}')
