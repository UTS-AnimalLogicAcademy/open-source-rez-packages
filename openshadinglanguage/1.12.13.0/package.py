# -*- coding: utf-8 -*-

name = 'openshadinglanguage'

version = '1.12.13.0'

private_build_requires = ['cmake-3.16', 'devtoolset-9']

requires = [
            'oiio-2.4',
	    'llvm',
	    'boost-1.80',
	    'openexr-3',
	    'Imath',
	    'python-3.10',
	    'flex',
	    'bison',
	    'pugixml'
            ]

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LIBRARY_PATH', '{root}/lib64/')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python3.10/site-packages')
    appendenv('PATH', '{root}/bin')
    setenv('OSL_LOCATION','{root}')

