# -*- coding: utf-8 -*-

name = 'luminance_hdr'

version = '2.4.0'

private_build_requires = ['cmake-3']

requires = ['qt-5.6','fftwf-3', 'gsl','openexr-2.2', 'exiv2-0.26', 'boost-1.80']

tools = ['luminance-hdr','luminance-hdr-cli']

def commands():
    appendenv('PATH', '{root}/bin')
