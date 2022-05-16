# -*- coding: utf-8 -*-

name = 'alembic'

version = '1.7.10'

requires = [
    'boost-1.70',
    'ilmbase',
    'pyilmbase',
    'devtoolset-6'
]

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PATH', '{root}/bin/')
    appendenv('PYTHONPATH', '{root}/lib/')


