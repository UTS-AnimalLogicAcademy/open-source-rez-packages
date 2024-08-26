# -*- coding: utf-8 -*-

name = 'boost'

version = '1.80.0.2'

build_requires = ['python-3.10', 'devtoolset']

requires = ['os-RedHatEnterprise-8.10+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('BOOST_ROOT', '{root}')


