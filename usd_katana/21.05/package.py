# -*- coding: utf-8 -*-

name = 'usd_katana'

version = '21.05'

requires = [
    'usd-21.05',
    'PyOpenGL-3.1.0',
    'KatanaUsdPlugins-21.05'
]

private_build_requires = [
    'cmake-3.12+',
]

variants = [
            ['platform-linux', 'arch-x86_64', 'katana-4.5.2']
           ]


def commands():
    env.KATANA_RESOURCES.append('{this.root}/third_party/katana/plugin')
    env.KATANA_POST_PYTHONPATH.append('{this.root}/third_party/katana/lib')

