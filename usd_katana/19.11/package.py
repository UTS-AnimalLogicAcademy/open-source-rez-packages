# -*- coding: utf-8 -*-

name = 'usd_katana'

version = '19.11.3'

requires = [
    'usd-19.11',
    'PyOpenGL-3.1.0'
]

private_build_requires = [
    'cmake-3.2',
]

variants = [
            ['platform-linux', 'arch-x86_64', 'katana-3.0'],
            ['platform-linux', 'arch-x86_64', 'katana-3.5'],
            ['platform-linux', 'arch-x86_64', 'katana-3.6'],
            ['platform-linux', 'arch-x86_64', 'katana-4.5']
           ]


def commands():
    env.KATANA_RESOURCES.append('{this.root}/third_party/katana/plugin')
    env.KATANA_POST_PYTHONPATH.append('{this.root}/third_party/katana/lib')

