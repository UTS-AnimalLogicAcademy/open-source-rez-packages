# -*- coding: utf-8 -*-

name = 'colmap'

version = '3.11.1.1'

build_requires = ['cmake-3.10+']

requires = [
    'boost-1.80.0.2',
    'eigen',
    'glog',
    'glew',
    'qt-5',
    'ceres_solver',
    'googletest',
    'flann',
    'cgal',
    'os-RedHatEnterprise-9+'
]

@early()
def config():
    import rezconfig
    return {'release_packages_path': rezconfig.release_ext_packages_path}

variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LIBRARY_PATH', '{root}/lib64/')
    appendenv('PATH', '{root}/bin/')
    setenv('colmap_DIR', '{root}/share/colmap')
