# -*- coding: utf-8 -*-

name = 'oiio'

version = '2.5.15.0.1'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = [
            'openexr-3.1',
            'ocio-2.2',
            'ffmpeg-4',
            'tbb-2020.3',
            'ptex-2.4',
            #'nuke-12',
            'qt-5.15',
            'boost-1.80',
            'python-3.10',
            'pybind11',
	    'libjpegturbo',
            'openjpeg',
            'dcmtk',
            'os-RedHatEnterprise-9+'
            ]

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python3.10/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')


