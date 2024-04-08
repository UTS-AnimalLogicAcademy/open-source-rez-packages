# -*- coding: utf-8 -*-

name = 'usd'

version = '21.11.3'

requires = [
    'opensubdiv-3.4',
    'jinja-3',
    'jemalloc-4',
    'openexr-3',
    'materialx',
    'ptex-2.4',
    'PyOpenGL',
    'embree_lib',
    'glew',
    'renderman',
    'ocio-2.1'
]

build_requires = [
    'devtoolset-7'
]

private_build_requires = [
    'cmake-3.14'
]

variants = [
#['platform-linux', 'arch-x86_64', 'boost-1.72', 'tbb-2020.3', 'oiio-2.1', 'python-2', 'pyside-1.2'],
['platform-linux', 'arch-x86_64', 'boost-1.76', 'tbb-2020.3', 'oiio-2.3', 'python-3.9', 'pyside2-5.15'],
]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    env.PXR_USD_LOCATION.append('{root}')
    appendenv('PATH', '{root}/bin/')


