# -*- coding: utf-8 -*-

name = 'KatanaUsdPlugins'

version = '19.11.4'

private_build_requires = [
    'cmake-3.12',
]

variants = [
#     ['platform-linux', 'arch-x86_64', 'katana-3.5'],
     ['platform-linux', 'arch-x86_64', 'katana-3.6']
]

def commands():
    env.USE_KATANA_USD.set("1")
    env.KATANA_RESOURCES.append('{this.root}/third_party/katana/plugin')


