# -*- coding: utf-8 -*-

name = 'oiio'

version = '2.3.10.1'

private_build_requires = ['cmake-3.16', 'devtoolset-7+']

requires = [
            'openexr-3.1',
            'ocio-2.1',
            'ffmpeg',
            'tbb-2020.3',
            'ptex-2.4',
            #'nuke-12',
            'qt-5.15',
            'boost-1.76',
            'python-3.9',
            'pybind11',
	    #'libjpegturbo',
            #'openjpeg'
            ]

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python2.7/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')


