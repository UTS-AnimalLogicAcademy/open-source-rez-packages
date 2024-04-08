# -*- coding: utf-8 -*-

name = 'KatanaUsdPlugins'

version = '19.11.9.2'

private_build_requires = [
    'cmake-3.12', 'devtoolset-9'
]

variants = [
#     ['platform-linux', 'arch-x86_64', 'katana-3.5'],
#    ['platform-linux', 'arch-x86_64', 'katana-4.5'],
#    ['platform-linux', 'arch-x86_64', 'katana-5'],
    ['platform-linux', 'arch-x86_64', 'katana-6']
]

def commands():
    #env.USE_KATANA_USD.set("1")
    env.KATANA_USD_PLUGINS_DISABLED.set("1")
    env.KATANA_RESOURCES.append('{this.root}/plugin')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.LD_LIBRARY_PATH.append('{this.root}/plugin/Libs')
    env.PYTHONPATH.append('{this.root}/lib/python')
    env.FNPXR_PLUGINPATH.set('{this.root}/lib/resources')
    env.LD_LIBRARY_PATH.append('/opt/Foundry/Katana3.6v2/bin')
    env.PYTHONPATH.append('/opt/Foundry/Katana3.6v2/bin/python')
    #env.REZ_KATANAUSDPLUGINS_ROOT.set('{this.root}')


