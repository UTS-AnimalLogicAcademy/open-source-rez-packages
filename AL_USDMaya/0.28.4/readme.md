This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for [al_usdmaya](https://github.com/AnimalLogic/AL_USDMaya) 0.25.0 on linux

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rpm/system packages:**
 - gtest-devel 1.6.0

Other versions may also work.

If the rpm/system package doesn't work for you (i.e. older distro build), you can create your own rez packages for any of the above, however you will most likely need to modify the build options.

**rez packages:**

 - qt-5.6
 - usd-0.8
 - maya-2017

## Building

 1. Run setup.sh
 2. To build locally, either run "rez-build -i", or just run the rez-build.sh script.  This will install to your local rez package location defined in your rez config (eg: ~/packages)
 3. To release (and build, if not already built), run rez-release.sh, which will install into the rez release location defined in your rez config.
 4. Test via rez-env al_usdmaya-0.25.0



