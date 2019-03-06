# -*- coding: utf-8 -*-

name = 'usd_katana'

version = '18.09'

requires = [
    'usd-18.09',
    'PyOpenGL-3.1.0'
]

private_build_requires = [
    'cmake-3.2',
]

variants = [
            ['platform-linux', 'arch-x86_64', 'katana-3.0.1'],
            ['platform-linux', 'arch-x86_64', 'katana-3.0.7'],
            ['platform-linux', 'arch-x86_64', 'katana-3.1.1'],
            ['platform-linux', 'arch-x86_64', 'katana-3.1.2'],
            ['platform-linux', 'arch-x86_64', 'katana-3.1.3']
           ]


def commands():
    env.KATANA_RESOURCES.append('{this.root}/third_party/katana/plugin')
    env.KATANA_POST_PYTHONPATH.append('{this.root}/third_party/katana/lib')

