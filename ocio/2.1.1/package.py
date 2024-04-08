# -*- coding: utf-8 -*-

name = 'ocio'

version = '2.1.1'

private_build_requires = [ 
    'cmake-3.16',
    'devtoolset-9'
]

requires = ['openexr-3','Imath','python-3.9']

def commands():
    env.LD_LIBRARY_PATH.append("{this.root}/lib64")
    env.PATH.append("{this.root}/bin")
    env.PKG_CONFIG_PATH.append("{this.root}/lib64/pkgconfig/")

uuid = '8b27c78f-02f3-461c-8aa7-3c440291b17e'
