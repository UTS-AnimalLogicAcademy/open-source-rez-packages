# -*- coding: utf-8 -*-

name = 'llvm'

version = '9.0.1'

build_requires = ['python']

private_build_requires = ['cmake-3', 'devtoolset-7']

def commands():
    env.PATH.append('{this.root}')
    env.LLVM_INSTALL_DIR.append('{this.root}')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.LIBRARY_PATH.append('{this.root}/lib')
