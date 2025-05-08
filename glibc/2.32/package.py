# -*- coding: utf-8 -*-

name = 'glibc'

version = '2.32'

requires = ['os-RedHatEnterprise-8.10+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
