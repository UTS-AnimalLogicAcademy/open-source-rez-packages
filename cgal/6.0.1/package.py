# -*- coding: utf-8 -*-

name = 'cgal'

version = '6.0.1'

private_build_requires = ['cmake-3']

@early()
def config():
    import rezconfig
    return {'release_packages_path': rezconfig.release_ext_packages_path}

def commands():
    setenv('CGAL_ROOT', '{root}')
    setenv('CGAL_DIR', '{root}/lib64/cmake/CGAL')
