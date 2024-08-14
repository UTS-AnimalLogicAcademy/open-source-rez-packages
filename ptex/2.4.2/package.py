# -*- coding: utf-8 -*-

name = 'ptex'

version = '2.4.2.1'

variants = [['platform-linux', 'arch-x86_64', 'os-RedHatEnterprise-8.10+']]

build_requires = ['cmake-3.12','devtoolset-11+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    setenv('PTEX_LOCATION', '{root}')

