# -*- coding: utf-8 -*-

name = 'jbigkit'

version = '2.1'

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/libjbig/')
    appendenv('LIBRARY_PATH', '{root}/libjbig/')


