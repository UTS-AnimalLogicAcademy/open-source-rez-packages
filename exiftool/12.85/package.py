# -*- coding: utf-8 -*-

name = 'exiftool'

version = '12.85'

private_build_requires = ['devtoolset-7+']

tools = ['exiftool']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')
    appendenv('PATH', '{root}')
