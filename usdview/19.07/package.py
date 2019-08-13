# -*- coding: utf-8 -*-

name = 'usdview'

version = '19.07'

requires = [
    'pyside-1.2',
    'usd-19.07'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
