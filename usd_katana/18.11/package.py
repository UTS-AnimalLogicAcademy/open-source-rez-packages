# -*- coding: utf-8 -*-

name = 'usd_katana'

version = '18.11'

requires = [
    'usd-18.11',
    'PyOpenGL-3.1.0'
]

build_requires = [
    'cmake-3.2',
    'katana'
]

variants = [
            ['platform-linux', 'arch-x86_64', 'katana-3.0'],
            ['platform-linux', 'arch-x86_64', 'katana-3.1']
           ]


def commands():
    env.KATANA_RESOURCES.append('{this.root}/third_party/katana/plugin')
    env.KATANA_POST_PYTHONPATH.append('{this.root}/third_party/katana/lib')

