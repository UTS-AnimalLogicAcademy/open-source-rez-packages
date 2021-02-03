# -*- coding: utf-8 -*-

name = 'oiio'

version = '1.8.5.1'

requires = [
            'openexr',
            'ilmbase',
            'ocio',
            'ffmpeg'
            ]

variants = [
            ['platform-linux', 'arch-x86_64', 'boost-1.55'],
            ['platform-linux', 'arch-x86_64', 'boost-1.61']
           ]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python2.7/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')


