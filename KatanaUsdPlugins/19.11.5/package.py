# -*- coding: utf-8 -*-

name = 'KatanaUsdPlugins'

version = '19.11.5'

private_build_requires = [
    'cmake-3.12',
]

variants = [
#     ['platform-linux', 'arch-x86_64', 'katana-3.5'],
     ['platform-linux', 'arch-x86_64', 'katana-4.5']
]

def commands():
    #env.USE_KATANA_USD.set("1")
    env.KATANA_USD_PLUGINS_DISABLED.set("1")
    env.KATANA_RESOURCES.append('{this.root}/third_party/katana/plugin')
    #env.LD_LIBRARY_PATH.append('{this.root}/third_party/katana/lib')
    env.PYTHONPATH.append('/opt/Foundry/Katana3.6v2/bin/python')
    env.LD_LIBRARY_PATH.append('{this.root}/third_party/katana/lib/usd/libs')
    #env.LD_LIBRARY_PATH.append('{this.root}/third_party/katana/plugin/Libs')
    
    #env.KATANA_RESOURCES.append('{root}/plugins/Resources/Usd/plugin')
    #env.PYTHONPATH.append('{this.root}/third_party/katana/lib/python')
    #env.PYTHONPATH.append('/opt/Foundry/Katana3.6v2/bin/python')
    env.LD_LIBRARY_PATH.append('/opt/Foundry/Katana3.6v2/bin')
    #env.LD_LIBRARY_PATH.append('{root}/plugins/Resources/Usd/lib')
    #env.FNPXR_PLUGINPATH.append('{this.root}/third_party/katana/lib/usd/usdKatana/resources')


