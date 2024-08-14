# -*- coding: utf-8 -*-

name = 'usd'

version = '23.11.0'

requires = [
    'opensubdiv-3.6',
    'jinja-3',
    'jemalloc-4',
    'openexr-3.2',
    'materialx-1.38.8',
    'ptex-2.4',
    'PyOpenGL',
    'alembic-1.8',
    'glew',
    'ocio-2.3',
    'openshadinglanguage',
    'openvdb-11'
]

private_build_requires = [
    'cmake-3.16',
    'devtoolset'
]

variants = [
#['platform-linux', 'arch-x86_64', 'boost-1.72', 'tbb-2020.3', 'oiio-2.1', 'python-2', 'pyside-1.2'],
['platform-linux', 'arch-x86_64', 'boost-1.82', 'tbb-2020.3', 'oiio-2.4', 'python-3.11', 'qt-6.5'],
]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    env.PXR_USD_LOCATION.append('{root}')
    env.RMAN_SHADERPATH.append('{root}/plugin/usd/resources/shaders')
    env.RMAN_TEXTUREPATH.append('{root}/plugin/usd')
    appendenv('PATH', '{root}/bin/')


