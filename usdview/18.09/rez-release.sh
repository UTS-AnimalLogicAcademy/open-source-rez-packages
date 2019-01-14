#! /bin/bash

# this will build (if not built already) and release to the configured rez release location
# the extra flags are because we are not developing this code with git, we're just building
# someone else's code.  
rez-release --ignore-existing-tag --skip-repo-errors --no-latest --no-message
