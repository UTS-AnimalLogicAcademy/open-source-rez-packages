# -*- coding: utf-8 -*-

name = 'usdview'

version = '18.11'

requires = [
    'pyside-1.2',
    'usd-18.11'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
