# -*- coding: utf-8 -*-

name = 'al_usdmaya'

version = '0.25.0'

requires = [
    'usd-0.8.2',
    'qt-5.6'
]

build_requires = ['cmake-3.2']

variants = [['platform-linux', 'arch-x86_64', 'maya-2017']]

def commands():
#    env.MAYA_SCRIPT_PATH.append("{this.root}/share/usd/plugins/usdMaya/resources/")
#    env.MAYA_SHELVES_ICONS = "{this.root}/share/usd/plugins/usdMaya/resources/"
#    env.MAYA_SHELF_PATH.append("{this.root}/share/usdplugins/usdMaya/resources/")
    env.MAYA_PLUG_IN_PATH.append("{this.root}/plugin")
    env.PYTHONPATH.append("{this.root}/lib/python")
#    env.XBMLANGPATH.append("{this.root}/plugins/usdMaya/resources/")

timestamp = 1515875738

format_version = 2
