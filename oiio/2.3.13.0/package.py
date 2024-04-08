# -*- coding: utf-8 -*-

name = 'oiio'

version = '2.3.13.1'

private_build_requires = ['cmake-3.16', 'devtoolset-7+']

requires = [
            'openexr-3.1',
            'ocio-2.1',
            'ffmpeg',
            'ptex-2.4',
            #'nuke-12',
            'qt-5.15',
            'python-3.9',
            'pybind11',
	    #'libjpegturbo',
            #'openjpeg'
            ]

variants = [['boost_katana-1.76','tbb_katana-2020.3','!boost', '!tbb'],['boost-1.76','tbb-2020.3', 'nuke-14.1']]

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python3.9/site-packages')
    setenv('OIIO_LIBRARY_PATH', '{root}/lib64')
    appendenv('PATH', '{root}/bin')


