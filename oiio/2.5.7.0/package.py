# -*- coding: utf-8 -*-

name = 'oiio'

version = '2.5.7.0.2'

private_build_requires = ['cmake-3', 'devtoolset-11+']

build_requires = ['qt-6.5.3']

requires = [
            'openexr-3.2',
            'ocio-2.3',
            'ffmpeg-6',
            'tbb-2020.3',
            'ptex-2.4',
            #'nuke-12',
            'boost-1.82',
            'python-3.11',
            'pybind11',
	    'libjpegturbo',
            'openjpeg',
            'os-RedHatEnterprise-9+'
            ]

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python3.11/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')


