
This is a collection of build scripts that will download, build and deploy various open source projects as rez packages.  

To learn about rez:
http://nerdvegas.github.io/rez/


## **To rez-build or not to rez-build**

Where possible, packages are build using rez wrappers "rez-build" and "rez-release".  Packages that build using cmake make this quite easy, whereas packages using other build tools make it less easy.  Building via rez is particularly useful when multiple variants of a package need to be built.  Packages that build via rez come with wrapper scripts rez-build.sh and rez-release.sh.  

Packages that did not lend themselves to a simple rez-build are build using simple bash scripts, these can be spotted by the build.sh in the root directory.  These packages require you to set some environment variables in build.sh to specify where packages should be released to.  


