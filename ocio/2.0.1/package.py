# -*- coding: utf-8 -*-

name = 'ocio'

version = '2.0.1'

def commands():
    env.LD_LIBRARY_PATH.append("{this.root}/lib")
    env.PATH.append("{this.root}/bin")
    env.PKG_CONFIG_PATH.append("{this.root}/lib/pkgconfig/")

uuid = '8b27c78f-02f3-461c-8aa7-3c440291b17e'
