# -*- coding: utf-8 -*-

name = 'usd'

version = '20.05.1'

requires = [
    'boost-1.61',
    'tbb-2017',
    'opensubdiv-3.2',
    'ilmbase-2.2',
    'jinja-2',
    'jemalloc-4',
    'openexr-2.2',
    'pyilmbase-2.2.0.1',
    'materialx',
    'oiio-1.8',
    'ptex-2.0',
    'PyOpenGL',
    'embree_lib',
    'glew',
    'renderman-22.6',
    'ocio-1.0.9',
    'devtoolset-6'
]

build_requires = [
    'pyside-1.2'
]

private_build_requires = [
    'cmake-3.14'
]

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    env.PXR_USD_LOCATION.append('{root}')
    appendenv('PATH', '{root}/bin/')


