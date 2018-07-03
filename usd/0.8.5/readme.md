This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for usd 0.8.5 on linux

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rpm/system packages:**

 - python 2.7
 - dcmtk-devel 3.6.0
 - LibRaw-devel 0.14.8
 - python-jinja2 2.7.2
 - qt-devel 4.8.5

Other versions may also work.

If the rpm/system package doesn't work for you (i.e. older distro build), you can create your own rez packages for any of the above, however you will most likely need to modify the build options.

**rez packages:**

 - boost-1.55
 - tbb-4.4.6
 - opensubdiv-3.2
 - ilmbase-2.2
 - openexr-2.2
 - pyilmbase-2.2
 - oiio-1.8.5
 - katana-2.6
 - ptex-2.0
 - pyside-1.2

## Building

 1. Run setup.sh
 2. To build locally, either run "rez-build -i", or just run the rez-build.sh script.  This will install to your local rez package location defined in your rez config (eg: ~/packages)
 3. To release (and build, if not already built), run rez-release.sh, which will install into the rez release location defined in your rez config.
 4. Test via rez-env usd-0.8.4
