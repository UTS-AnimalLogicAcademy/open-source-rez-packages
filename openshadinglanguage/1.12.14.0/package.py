# -*- coding: utf-8 -*-

name = 'openshadinglanguage'

version = '1.12.14.1'

private_build_requires = ['cmake-3', 'devtoolset-9+']

requires = [
            'oiio-2.4',
	    'llvm',
	    'boost-1.82',
	    'openexr-3.2',
	    'Imath',
	    'python-3.11',
	    'flex',
	    'bison',
	    'pugixml',
            'os-RedHatEnterprise-8+'
            ]

#variants = [['platform-linux', 'arch-x86_64']]

def commands():
    appendenv('LIBRARY_PATH', '{root}/lib64/')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64/')
    appendenv('PYTHONPATH', '{root}/lib64/python3.11/site-packages')
    appendenv('PATH', '{root}/bin')
    setenv('OSL_LOCATION','{root}')

