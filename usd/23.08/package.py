# -*- coding: utf-8 -*-

name = 'usd'

version = '23.08.5'

requires = [
    'opensubdiv-3.5',
    #'ilmbase-3.1',
    'jinja-3',
    'jemalloc-4',
    'openexr-3.1',
    #'pyilmbase-3.1',
    'materialx',
    'ptex-2.4',
    'PyOpenGL',
    'embree_lib-3.8',
    'alembic-1.8',
    'glew',
    'renderman-25.2',
    'ocio-2.2',
    'openshadinglanguage',
    'openvdb'
]

private_build_requires = [
    'cmake-3.16',
    'devtoolset'
]

variants = [
#['platform-linux', 'arch-x86_64', 'boost-1.72', 'tbb-2020.3', 'oiio-2.1', 'python-2', 'pyside-1.2'],
['platform-linux', 'arch-x86_64', 'boost-1.80', 'tbb-2020.3', 'oiio-2.4', 'python-3.10', 'pyside2-5.15.12'],
]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    env.PXR_USD_LOCATION.append('{root}')
    env.RMAN_SHADERPATH.append('{root}/plugin/usd/resources/shaders')
    env.RMAN_TEXTUREPATH.append('{root}/plugin/usd')
    appendenv('PATH', '{root}/bin/')


