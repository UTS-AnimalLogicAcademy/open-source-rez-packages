# -*- coding: utf-8 -*-

name = 'usd_katana'

# this is an internal ALA version, which we deploy anytime we have to rebuild new variants of dcc plugins:
version = '0.8.4.001'

# this is the vanilla USD version, which you'll want to use:
#version = '0.8.4'

requires = [
    'usd-0.8.4'
]

build_requires = [
    'cmake-3.2',
    'katana'
]

variants = [
            ['platform-linux', 'arch-x86_64', 'katana-2.6.4'],
            ['platform-linux', 'arch-x86_64', 'katana-3.0.1.010026b']
           ]


def commands():
    env.KATANA_RESOURCES.append('{this.root}/third_party/katana/plugin')
    env.KATANA_POST_PYTHONPATH.append('{this.root}/third_party/katana/lib')

