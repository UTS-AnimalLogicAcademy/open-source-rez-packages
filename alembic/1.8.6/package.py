# -*- coding: utf-8 -*-

name = 'alembic'

version = '1.8.6'

build_requires = ['cmake-3','devtoolset']

requires = [
    'boost-1.80',
    'Imath-3',
    'devtoolset',
    'python-3.10'
]

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PATH', '{root}/bin/')
    appendenv('PYTHONPATH', '{root}/lib/')


