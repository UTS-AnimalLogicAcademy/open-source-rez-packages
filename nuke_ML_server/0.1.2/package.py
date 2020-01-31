# -*- coding: utf-8 -*-

name = 'nuke_ML_server'

version = '0.1.2'

build_requires = [
    'cmake-3.10+'
]

variants = [
            ['platform-linux', 'arch-x86_64', 'nuke-11']
#            ['platform-linux', 'arch-x86_64', 'nuke-12']
           ]

def commands():
     env.NUKE_PATH.append('{root}/lib')
     env.LDD_LIBRARY_PATH.append(env.NUKE_LOCATION)
