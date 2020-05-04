# -*- coding: utf-8 -*-

name = 'oiio'

version = '2.1.9.0'

requires = [
            'openexr',
            'ilmbase',
            'ocio',
            'ffmpeg',
            'tbb',
            'ptex',
            'nuke',
            'qt',
            'boost'
            ]

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python2.7/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')


