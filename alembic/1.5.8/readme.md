This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for alembic 1.5.8 on linux

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rpm/system packages:**

 - python 2.7
 - hdf5-devel 1.8.12
 - zlib-devel 1.2.7
 - glew-devel 1.10.0
 - qt-devel 4.8.5
 - libXmu-devel 1.1.2
 - libXi-devel 1.7.9
 - glew-devel 1.10.0
 - freeglut-devel 2.8.1

Other versions may also work.

If the rpm/system package doesn't work for you (i.e. older distro build), you can create your own rez packages for any of the above, however you will most likely need to modify the build options.

**rez packages:**

 - boost-1.55.0 
 - ilmbase-2.2.0 
 - openexr-2.2.0 
 - pyilmbase-2.2.0

## Building

 1. Run setup.sh
 2. To build locally, either run "rez-build -i", or just run the rez-build.sh script.  This will install to your local rez package location defined in your rez config (eg: ~/packages)
 3. To release (and build, if not already built), run rez-release.sh, which will install into the rez release location defined in your rez config.
 4. Test via rez-env alembic-1.5.8