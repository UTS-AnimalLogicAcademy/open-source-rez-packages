# -*- coding: utf-8 -*-

name = 'ocio'

version = '2.2.1.1'

private_build_requires = [ 
    'cmake-3'
]

requires = ['openexr-3','Imath','python-3.10', 'pybind11-2.9.2', 'os-RedHatEnterprise-9+']

def commands():
    env.LD_LIBRARY_PATH.append("{this.root}/lib64")
    env.LIBRARY_PATH.append("{this.root}/lib64")
    env.LIBRARY_PATH.append("{this.root}/lib64/python3.10/site-packages")
    env.LD_LIBRARY_PATH.append("{this.root}/lib64/python3.10/site-packages")
    env.PYTHONPATH.append("{this.root}/lib64/python3.10/site-packages")
    env.PATH.append("{this.root}/bin")
    env.PKG_CONFIG_PATH.append("{this.root}/lib64/pkgconfig/")

uuid = '8b27c78f-02f3-461c-8aa7-3c440291b17e'
