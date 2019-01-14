cmake_minimum_required (VERSION 2.8)

include(RezBuild)
rez_find_packages(PREFIX pkgs AUTO)

file(GLOB_RECURSE bin_files "bin/*")
rez_install_files(
    ${bin_files}
    DESTINATION .
    EXECUTABLE
    LOCAL_SYMLINK
)
