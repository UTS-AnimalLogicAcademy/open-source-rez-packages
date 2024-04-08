# -*- coding: utf-8 -*-

name = 'qt5'

version = '5.15.2.1'

build_requires = ['cmake-3', 'openssl', 'llvm','devtoolset-7+']

requires = ['python-3.10']

def commands():
    env.PATH.append('{this.root}')
    env.PATH.append('{this.root}/bin')
    env.QT_SRC_DIR.set('{this.root}')
