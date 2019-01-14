# -*- coding: utf-8 -*-

name = 'cppzmq'

version = '4.3.0'

requires = ['libzmq']

build_requires = ['cmake-3+<4']

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    env.CPPZMQ_INCLUDE.set("{this.root}/include")

timestamp = 1545278351
