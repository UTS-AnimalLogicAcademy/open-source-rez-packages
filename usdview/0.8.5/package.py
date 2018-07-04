# -*- coding: utf-8 -*-

name = 'usdview'

version = '0.8.5'

requires = [
    'pyside-1.2',
    'usd-0.8.5',
    'zmq_server',
    'ala_usd_resolver'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
