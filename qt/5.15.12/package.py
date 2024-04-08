# -*- coding: utf-8 -*-

name = 'qt5'

version = '5.15.12.1'

private_build_requires = ['cmake-3','devtoolset-7+']

build_requires = ['llvm']

requires = ['python-3.9','openssl']

def commands():
    env.PATH.append('{this.root}')
    env.PATH.append('{this.root}/bin')
    env.QT_SRC_DIR.set('{this.root}')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.LIBRARY_PATH.append('{this.root}/lib')
