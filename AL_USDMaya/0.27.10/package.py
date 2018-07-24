# -*- coding: utf-8 -*-

name = 'al_usdmaya'

version = '0.27.10'

requires = [
    'qt-5.6'
]

build_requires = [
    'cmake-3.2',
    'googletest-1.8.0'
]

variants = [
#            ['platform-linux', 'arch-x86_64', 'maya-2017', 'usd-0.8.4'],
            ['platform-linux', 'arch-x86_64', 'maya-2017', 'usd-0.8.5']
           ]

def commands():
    env.MAYA_SCRIPT_PATH.append("{this.root}/share/usd/plugins/usdMaya/resources/")
    env.MAYA_PLUG_IN_PATH.append("{this.root}/plugin")
    env.PYTHONPATH.append("{this.root}/lib/python")
    env.LD_LIBRARY_PATH.append("{this.root}/lib")
    env.PXR_PLUGINPATH.append("{this.root}/share/usd/plugins")
