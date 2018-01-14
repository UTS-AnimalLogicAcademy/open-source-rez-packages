# -*- coding: utf-8 -*-

name = 'alembic'

version = '1.5.8'

requires = [
    'boost-1.55',
    'ilmbase',
    'pyilmbase'
]

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PATH', '{root}/bin/')
    appendenv('PYTHONPATH', '{root}/lib/')


