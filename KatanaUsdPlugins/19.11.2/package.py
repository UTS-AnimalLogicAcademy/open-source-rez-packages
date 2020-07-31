# -*- coding: utf-8 -*-

name = 'KatanaUsdPlugins'

version = '19.11.2'

#requires = [
#    'usd-19.11',
#    'PyOpenGL-3.1.0',
#    'glew'
#]

private_build_requires = [
    'cmake-3.12',
]

variants = [
            ['platform-linux', 'arch-x86_64', 'katana-3.5']
           ]


def commands():
    env.USE_KATANA_USD.set("1")


