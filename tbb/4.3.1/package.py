# -*- coding: utf-8 -*-

name = 'tbb'

version = '4.3.1'

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/intel64/gcc4.4')



