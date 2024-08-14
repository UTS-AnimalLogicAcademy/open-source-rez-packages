# -*- coding: utf-8 -*-

name = 'wxWidgets'

version = '3.2.5'

private_build_requires = ['cmake-3', 'devtoolset-7+']

tools = ['wxrc']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PATH', '{root}/bin')
    setenv('wxWidgets_ROOT_DIR', '{root}')
