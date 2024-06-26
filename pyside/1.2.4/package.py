# -*- coding: utf-8 -*-

name = 'pyside'

version = '1.2.4.1'

variants = [['platform-linux', 'arch-x86_64', 'python-3']]

def commands():
    env.PATH.append('{this.root}/bin')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.XDG_DATA_DIRS.set('$XDG_DATA_DIRS:{this.root}/share')
    env.XDG_DATA_DIRS.append('{this.root}/share')
    env.PYTHONPATH.append('{this.root}/lib64/python3.9/site-packages')

