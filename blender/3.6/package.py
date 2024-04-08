# -*- coding: utf-8 -*-

name = 'blender'

version = '3.6.10'

build_requires = ['devtoolset-11', 'cmake-3']

requires = ['python-3.10', 'freetype-2.11', 'boost-1.80','openexr','ffmpeg-4','jemalloc','openvdb-10','openshadinglanguage','usd_monolithic-23.08', 'embree_lib-3.8', 'fftw-3', 'webp', 'alembic-1.8', 'openpgl-0.5']

def commands():
    appendenv('PATH', '{root}')


