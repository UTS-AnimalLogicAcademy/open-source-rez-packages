# -*- coding: utf-8 -*-

name = 'usdview'

version = '18.09'

requires = [
    'pyside-1.2',
    'usd-18.09'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
