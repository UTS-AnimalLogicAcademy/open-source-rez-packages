This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for boost 1.55 on linux.  

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rpm/system packages:**

 - icu 50.1.2
 - zlib-devel 1.2.7   

Other versions may also work.

If the rpm/system package doesn't work for you (i.e. older distro build), you can create your own rez packages for any of the above, however you will most likely need to modify the build options.

## Building
 1. Ensure build versions are correct in package.py, build.sh, clean.sh, and setup.sh
 2. Run setup.sh
 3. Set the package installation options in build.sh
 4. Run build.sh
 5. Test via rez-env boost-(version number)
 6. Run clean.sh
