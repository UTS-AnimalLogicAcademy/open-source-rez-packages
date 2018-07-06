# -*- coding: utf-8 -*-

name = 'usd_houdini'

version = '0.8.5'

requires = [
    'usd-0.8.5',
    'PyOpenGL-3.1.0'
]

build_requires = [
    'cmake-3.2',
]

variants = [
            ['platform-linux', 'arch-x86_64', 'houdini-16.5.268'],
            ['platform-linux', 'arch-x86_64', 'houdini-16.5.405'],
            ['platform-linux', 'arch-x86_64', 'houdini-16.5.405.001'],
            ['platform-linux', 'arch-x86_64', 'houdini-16.5.405.002']
           ]

def commands():
    env.HOUDINI_PATH.append('{this.root}/third_party/houdini:&')
    env.HOUDINI_DSO_ERROR.set('1')
    env.HOUDINI_DSO_PATH.append('@/plugin:&')
    env.HOUDINI_SCRIPT_PATH.append('@/scripts:%s/third_party/houdini/lib:&' % env.REZ_USD_HOUDINI_ROOT)
    env.HOUDINI_PYTHON_LIB.set('/lib64/libpython2.7.so')
    env.HOUDINI_OTLSCAN_PATH.append('%s/third_party/houdini/otls' % env.REZ_USD_HOUDINI_ROOT)
    env.PYTHONPATH.append('{this.root}/lib/python/pxr')
