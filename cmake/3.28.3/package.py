# -*- coding: utf-8 -*-

name = 'cmake'

version = '3.28.3'

requires = ['python-3.10+']

def commands():
	env.PATH.append("{root}/bin")
