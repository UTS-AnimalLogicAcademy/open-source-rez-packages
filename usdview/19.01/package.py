# -*- coding: utf-8 -*-

name = 'usdview'

version = '19.01'

requires = [
    'pyside-1.2',
    'usd-19.01',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
