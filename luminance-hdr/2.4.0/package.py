# -*- coding: utf-8 -*-

name = 'luminance_hdr'

version = '2.4.1'

private_build_requires = ['cmake-3']

requires = ['qt-5.15','fftwf-3', 'gsl','openexr-3', 'exiv2-0.28', 'boost-1.80', 'python-3.10', 'os-RedHatEnterprise-9+']

tools = ['luminance-hdr','luminance-hdr-cli']

def commands():
    appendenv('PATH', '{root}/bin')
