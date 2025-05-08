# -*- coding: utf-8 -*-

name = 'SIBR_viewers'

version = '0.9.6'

private_build_requires = ['cmake-3']

requires = ['os-RedHatEnterprise-9+',
            'eigen',
            'embree_lib-3.8.0',
            'glew',
            'boost',
            'assimp',
            'opencv',
            'ffmpeg-4']

@early()
def config():
    import rezconfig
    return {'release_packages_path': rezconfig.release_ext_packages_path}

def commands():
    appendenv('PATH', '{root}/bin')
    appendenv('LIBRARY_PATH', '{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/bin')
