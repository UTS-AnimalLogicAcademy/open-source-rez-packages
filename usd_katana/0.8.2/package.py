# -*- coding: utf-8 -*-

name = 'usd_katana'

version = '0.8.2'

requires = [
    'usd-0.8.2'
]

build_requires = [
    'cmake-3.2',
]

variants = [['platform-linux', 'arch-x86_64', 'katana-2.5.4'],
            ['platform-linux', 'arch-x86_64', 'katana-2.6.4']]


def commands():
    env.KATANA_RESOURCES.append('{this.root}/third_party/katana/plugin')
    env.KATANA_POST_PYTHONPATH.append('{this.root}/third_party/katana/lib')

