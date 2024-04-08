# -*- coding: utf-8 -*-

name = 'openrv'

version = '2.0.0'

requires = [
    'python-3.10',
    'qt-5.15',
    'nasm'
]

private_build_requires = [
    'cmake-3',
    'devtoolset-9'
]

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    env.PXR_USD_LOCATION.append('{root}')
    env.RMAN_SHADERPATH.append('{root}/plugin/usd/resources/shaders')
    env.RMAN_TEXTUREPATH.append('{root}/plugin/usd')
    appendenv('PATH', '{root}/bin/')


