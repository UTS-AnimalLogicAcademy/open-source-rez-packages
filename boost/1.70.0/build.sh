#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=boost
export PACKAGE_VERSION=1.70.0

#export PYTHON_VERSION=python-2
#rez-env python-2 -c ./_build_.sh

export PYTHON_VERSION=python-3.7
rez-env python-3.7 -c ./_build_.sh

#cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

