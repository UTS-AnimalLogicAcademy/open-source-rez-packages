# -*- coding: utf-8 -*-

name = 'usd_houdini'

version = '0.8.4'

requires = [
    'usd-0.8.4'
]

build_requires = [
    'cmake-3.2',
]

variants = [
            ['platform-linux', 'arch-x86_64', 'houdini-16.0.557'],
            ['platform-linux', 'arch-x86_64', 'houdini-16.0.736'],
            ['platform-linux', 'arch-x86_64', 'houdini-16.5.268']
#            ['platform-linux', 'arch-x86_64', 'houdini-16.5.268'] $ 16.5 has build issues...maybe not supported yet?
           ]

def commands():
    env.HOUDINI_PATH.append('{this.root}/third_party/houdini:&')
    env.HOUDINI_DSO_ERROR.set('1')
    env.HOUDINI_DSO_PATH.append('@/plugin:&')
    env.HOUDINI_SCRIPT_PATH.append('@/scripts:%s/third_party/houdini/lib:&' % env.REZ_USD_HOUDINI_ROOT)
    env.HOUDINI_PYTHON_LIB.set('/lib64/libpython2.7.so')
