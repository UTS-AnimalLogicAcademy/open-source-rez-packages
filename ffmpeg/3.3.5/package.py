# -*- coding: utf-8 -*-

name = 'ffmpeg'

version = '3.3.5'

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    env.PATH.append('{this.root}/bin')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig/')
