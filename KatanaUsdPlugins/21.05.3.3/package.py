# -*- coding: utf-8 -*-

name = 'KatanaUsdPlugins'

version = '21.05.3.3'

private_build_requires = [
    'cmake-3.12',
]

variants = [
#     ['platform-linux', 'arch-x86_64', 'katana-3.5'],
     ['platform-linux', 'arch-x86_64', 'katana-4.5.2']
]

def commands():
    env.KATANA_USD_PLUGINS_DISABLED.set("1")
    env.KATANA_RESOURCES.append('{this.root}/plugin')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')


