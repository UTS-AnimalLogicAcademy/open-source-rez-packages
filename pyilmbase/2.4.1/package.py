# -*- coding: utf-8 -*-

name = 'pyilmbase'

version = '2.4.1'

requires = ['ilmbase-2.4.1']

build_requires = [
            'cmake',
	    'devtoolset-7'
           ]

variants = [
	    ['platform-linux', 'arch-x86_64', 'boost-1.55'],
            ['platform-linux', 'arch-x86_64', 'boost-1.61'],
            ['platform-linux', 'arch-x86_64', 'boost-1.70'],
#	    ['platform-linux', 'arch-x86_64', 'boost_katana-1.70'],
	    ['platform-linux', 'arch-x86_64', 'boost-1.66'],
            ['platform-linux', 'arch-x86_64', 'boost-1.72'],
            ['platform-linux', 'arch-x86_64', 'boost-1.76']
	    ]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig/')
    appendenv('PYTHONPATH', '{root}/lib64/python2.7/site-packages')


