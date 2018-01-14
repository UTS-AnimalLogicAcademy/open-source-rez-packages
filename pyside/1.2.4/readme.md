This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for pyside 1.5.8 on linux.  

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rpm/system packages:**
 - python 2.7
 - zlib-devel 1.2.7
 - shiboken 1.2.2
 - qt 4.5

Other versions may also work.

If the rpm/system package doesn't work for you (i.e. older distro build), you can create your own rez packages for any of the above, however you will most likely need to modify the build options.

**rez packages:**
 - boost-1.55.0
 - ilmbase-2.2.0
 - openexr-2.2.0
 - pyilmbase-2.2.0

## Building

 1. Run setup.sh
 2. Set the pacakge installation options in build.sh
 3. Run build.sh
 4. Test via rez-env oiio-1.8.5