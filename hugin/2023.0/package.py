# -*- coding: utf-8 -*-

name = 'hugin'

version = '2023.0.0'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['enblend', 'exiftool', 'libpano13', 'boost-1.80', 'exiv2-0.28', 'fftw-3', 'glew', 'openexr-2.2', 'swig', 'wxWidgets', 'python-3']

tools = ['hugin', 'align_image_stack']

def commands():
    appendenv('PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
