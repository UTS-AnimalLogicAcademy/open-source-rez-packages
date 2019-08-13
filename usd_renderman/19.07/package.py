# -*- coding: utf-8 -*-

name = 'usd_renderman'

version = '19.07'

requires = [
    'usd-19.07',
    'renderman-22.6',
    'glew'
]

build_requires = [
    'pyside-1.2'
]

private_build_requires = [
    'cmake-3.2'
]


def commands():

    env.PYTHONPATH.prepend("{this.root}/lib/python")
    env.LD_LIBRARY_PATH.append('{root}/lib/')
    appendenv('PATH', '{root}/bin/')

