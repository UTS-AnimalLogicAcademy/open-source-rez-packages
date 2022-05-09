This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for tbb 4.4.6 on linux.  

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

Not much to say about this once, since the libraries are pre-build...just run install.sh after setting the package installation in config.sh

## Building

 1. Run setup.sh
 2. Set the pacakge installation options in build.sh
 3. Run build.sh
 4. Test via rez-env tbb-4.4.6