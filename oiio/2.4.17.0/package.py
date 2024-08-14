# -*- coding: utf-8 -*-

name = 'oiio'

version = '2.4.17.3'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = [
            'openexr-3.2',
            'ocio-2.3',
            'ffmpeg',
            'tbb-2020.3',
            'ptex-2.4',
            #'nuke-12',
            'qt-6.5',
            'boost-1.82',
            'python-3.11',
            'pybind11',
	    #'libjpegturbo',
            'openjpeg',
            'os-RedHatEnterprise-8+'
            ]

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python3.11/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')


