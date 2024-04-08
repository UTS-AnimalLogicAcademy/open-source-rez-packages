# -*- coding: utf-8 -*-

name = 'usd'

version = '21.05.1'

requires = [
    'opensubdiv-3.2',
    'ilmbase-2.2',
    'jinja-2',
    'jemalloc-4',
    'openexr-2.2',
    'pyilmbase-2.2.0',
    'materialx',
    'oiio-1.8',
    'ptex-2.0',
    'PyOpenGL',
    'embree_lib',
    'glew',
    'ocio-1.0.9',
    'devtoolset-7'
]

build_requires = [
    'pyside-1.2'#, 'pyside2-5.12'
]

private_build_requires = [
    'cmake-3.14'#'cmake-3.25'
]

variants = [
	    ['platform-linux', 'arch-x86_64', 'boost-1.70', 'tbb-2019.6', 'python-2'],
	    #['platform-linux', 'arch-x86_64', 'boost-1.70', 'tbb-2019.6', 'renderman-25.0', 'python-2']
	    #['platform-linux', 'arch-x86_64', 'boost_katana-1.70', 'tbb_katana-2019.6', 'python-3'],
	    #['platform-linux', 'arch-x86_64', 'boost-1.76', 'tbb-2020.3', 'python-3']]
]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    appendenv('PATH', '{root}/bin/')


