# -*- coding: utf-8 -*-

name = 'llvm'

version = '9.0.1.1'

requires = ['os-RedHatEnterprise-8+']

build_requires = ['python']

private_build_requires = ['cmake-3', 'devtoolset-11']

def commands():
    env.PATH.append('{this.root}/bin')
    env.LLVM_INSTALL_DIR.append('{this.root}')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.LIBRARY_PATH.append('{this.root}/lib')
