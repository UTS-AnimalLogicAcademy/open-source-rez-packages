# -*- coding: utf-8 -*-

name = 'nasm'

version = '2.15.05'

private_build_requires = [
    'devtoolset-9'
]

def commands():
    appendenv('PATH', '{root}/bin/')


