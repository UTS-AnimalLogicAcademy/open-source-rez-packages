# -*- coding: utf-8 -*-

name = 'oiio'

version = '2.3.13.4'

private_build_requires = ['cmake-3']

requires = [
            'openexr-3.1',
            'ocio-2.2',
            'ffmpeg-4',
            'ptex-2.4.2<2.4.2.1',
            #'nuke-12',
            'qt-5.15',
            'python-3.10',
            'pybind11',
            'os-RedHatEnterprise-9+'
	    #'libjpegturbo',
            #'openjpeg'
            ]

variants = [['boost_katana-1.80','tbb_katana-2020.3','!boost', '!tbb']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python3.10/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')


