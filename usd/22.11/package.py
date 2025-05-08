# -*- coding: utf-8 -*-

name = 'usd'

version = '22.11.0'

requires = [
    'opensubdiv-3.5',
    'materialx-1.38.5',
    'jinja-3',
    'jemalloc-4',
    'openexr-3.1',
    'ptex-2.4',
    'PyOpenGL',
    'embree_lib',
    'glew',
    'renderman',
    'ocio-2.2'
]

private_build_requires = [
    'cmake-3.14+',
    'devtoolset-7+'
]

variants = [
#['platform-linux', 'arch-x86_64', 'boost-1.72', 'tbb-2020.3', 'oiio-2.1', 'python-2', 'pyside-1.2'],
['platform-linux', 'arch-x86_64', 'boost-1.80.0.2', 'tbb-2020.3', 'oiio-2.4', 'python-3.10', 'pyside2-5.15.2.1'],
]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    env.PXR_USD_LOCATION.append('{root}')
    appendenv('PATH', '{root}/bin/')


