# -*- coding: utf-8 -*-

name = 'openssl'

version = '1.1.1'

build_requires = ['python', 'cmake-3', 'devtoolset-7']

def commands():
    env.PATH.append('{this.root}')
    env.PATH.append('{this.root}/bin')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.OPENSSL_LIB_DIR.set('{this.root}/lib')
