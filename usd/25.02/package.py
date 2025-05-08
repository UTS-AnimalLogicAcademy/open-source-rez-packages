# -*- coding: utf-8 -*-

name = 'usd'

version = '25.02.0'

requires = [
    'opensubdiv-3.6',
    'jinja-3',
    'jemalloc-4',
    'openexr-3.2',
    'materialx',
    'ptex-2.4',#<2.4.2.1',
    'PyOpenGL',
    'embree_lib-3.8',
    'alembic-1.8',
    'glew',
    'renderman-26.3',
    'ocio-2.3',
    'openshadinglanguage',
    'openvdb-11',
    'os-RedHatEnterprise-9+'
]

private_build_requires = [
    'cmake-3.16',
    'devtoolset'
]

variants = [
['platform-linux', 'arch-x86_64','boost-1.82.0.1', 'tbb-2020.3', 'oiio-2.4', 'python-3.11', 'pyside6-6.5', 'ocio_configs-2.0.2'],
]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    env.PXR_USD_LOCATION.append('{root}')
    env.RMAN_SHADERPATH.append('{root}/plugin/usd/resources/shaders')
    env.RMAN_TEXTUREPATH.append('{root}/plugin/usd')
    appendenv('PATH', '{root}/bin/')


