# -*- coding: utf-8 -*-

name = 'usd'

version = '19.07'

requires = [
    'alembic-1.5',
    'boost-1.55',
    'tbb-4.4.6',
    'opensubdiv-3.2',
    'ilmbase-2.2',
    'jinja-2',
    'jemalloc-4',
    'openexr-2.2',
    'pyilmbase-2.2',
    'materialx',
    'oiio-1.8',
    'ptex-2.0',
    'PyOpenGL',
    'embree_lib',
    'glew',
    'renderman-22.6',
    'ocio-1.0.9'
]

build_requires = [
    'pyside-1.2'
]

private_build_requires = [
    'cmake-3.2'
]

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    appendenv('PATH', '{root}/bin/')


