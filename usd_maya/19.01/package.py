# -*- coding: utf-8 -*-

name = 'usd_maya'

version = '19.01.2'

requires = [
    'boost-1.55',
    'tbb-4.4.6',
    'opensubdiv-3.2',
    'ilmbase-2.2',
    'jinja-2',
    'openexr-2.2',
    'pyilmbase-2.2',
    'materialx',
    'oiio-1.8',
    'embree_lib',
    'PyOpenGL-3.1.0',
    'jemalloc-4'
]

build_requires = [
    'pyside-1.2'
]

private_build_requires = [
    'cmake-3.2'
]

variants = [
    ['platform-linux', 'arch-x86_64', 'maya-2017'],
    ['platform-linux', 'arch-x86_64', 'maya-2018'],
    ['platform-linux', 'arch-x86_64', 'maya-2019', 'devtoolset-6'] # gcc-6.1 is required for maya 2019 plugins
]

def commands():
    env.MAYA_SCRIPT_PATH.append("{this.root}/third_party/maya/lib/usd/usdMaya/resources/")
    env.MAYA_SHELVES_ICONS = "{this.root}/third_party/maya/lib/usd/usdMaya/resources/"
    env.MAYA_SHELF_PATH.append("{this.root}/third_party/maya/lib/usd/usdMaya/resources/")
    env.XBMLANGPATH.append("{this.root}/third_party/maya/share/usd/plugins/usdMaya/resources/")
    env.MAYA_PLUG_IN_PATH.append("{this.root}/third_party/maya/plugin")

    env.PYTHONPATH.prepend("{this.root}/lib/python")
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    appendenv('PATH', '{root}/bin/')

    env.MAYA_VP2_DEVICE_OVERRIDE.set("VirtualDeviceGL")
    env.MAYA_VP2_USE_VP1_SELECTION.set(1)
