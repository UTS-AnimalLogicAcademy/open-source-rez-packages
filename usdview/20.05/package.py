# -*- coding: utf-8 -*-

name = 'usdview'

version = '20.05' 

requires = [
    'pyside-1.2',
    'usd-20.05',
    'ocio_configs',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
