# -*- coding: utf-8 -*-

name = 'oiio'

version = '1.8.5.6'

requires = [
            'openexr-2',
            'ilmbase',
            'ocio',
            'ffmpeg-3',
	    #'qt-5.15'
            ]

build_requires = [
	    'devtoolset-7'
]

variants = [
            ['platform-linux', 'arch-x86_64', 'boost-1.55'],
            ['platform-linux', 'arch-x86_64', 'boost-1.61'],
	    ['platform-linux', 'arch-x86_64', 'boost-1.66'],
	    ['platform-linux', 'arch-x86_64', 'boost-1.70'],
	    #['platform-linux', 'arch-x86_64', 'boost_katana-1.70'],
	    ['platform-linux', 'arch-x86_64', 'boost-1.72'],
	    ['platform-linux', 'arch-x86_64', 'boost-1.76']
           ]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python2.7/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')


