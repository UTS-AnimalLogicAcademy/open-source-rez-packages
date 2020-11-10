# -*- coding: utf-8 -*-

name = 'tbb'

version = '4.4.6'

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib/intel64/gcc4.8.5/')
    env.TBB_INSTALL_DIR.set('{root}')
    env.TBBROOT.set('{root}')
    env.TBB_LIBRARIES.set('{root}/lib/intel64/gcc4.8.5')

# dan: not sure why, but at some point I made this change:
# however it breaks the usd build, because the lib dir ends up being added to the rpath, 
# which strangely causes the system tbb library to be used.  
# I think commenting this out is harmless?  we'll find out. 
#    env.LIBRARY_PATH.append('{root}/lib/intel64/gcc4.8.5')
