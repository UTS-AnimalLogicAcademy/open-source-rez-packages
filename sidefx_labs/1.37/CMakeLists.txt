cmake_minimum_required(VERSION 2.6)

include(RezBuild)

file(GLOB_RECURSE src_files "src/*")
rez_install_files(
    ${src_files}
    DESTINATION .
    EXECUTABLE
    LOCAL_SYMLINK
)
