set(PXR_INSTALL_SUBDIR "third_party/katana")

######################################################################
# standalone plugin build, build the katna plugin without building core 
# US libs and binaries.  
#
# eg:
# cmake -DPXR_BUILD_USD=OFF -DUSD_INCLUDE_DIR=$REZ_USD_ROOT/include -DUSD_LIB_DIR=$REZ_USD_ROOT/lib ..
if (NOT ${PXR_BUILD_USD})

    string(COMPARE EQUAL "${USD_INCLUDE_DIR}" "" NO_USD_INCLUDE_DIR)
    string(COMPARE EQUAL "${USD_LIB_DIR}" "" NO_USD_LIB_DIR)

    if (${NO_USD_INCLUDE_DIR} OR ${NO_USD_LIB_DIR})
        message(ERROR "Cannot build standalone katana plugin without USD_INCLUDE_DIR and USE_LIB_DIR being set")
	return()
    endif()
    include_directories(${USD_INCLUDE_DIR} ${Boost_INCLUDE_DIRS} ${TBB_INCLUDE_DIRS})
    link_directories(${USD_LIB_DIR})
endif()
######################################################################

pxr_setup_plugins()

# Transform the KATANA_API versions into defines to be used by this code
add_definitions(
    -DPX_KATANA_ASSET_API_VER=${KATANA_API_ASSET_API_VERSION}
    -DPX_KATANA_AMP_API_VER=${KATANA_API_AMP_API_VERSION}
    -DPX_KATANA_SGG_API_VER=${KATANA_API_SGG_API_VERSION}
    -DPX_KATANA_RENDER_API_VER=${KATANA_API_RENDER_API_VERSION}
    -DPX_KATANA_VMP_API_VER=${KATANA_API_VMP_API_VERSION}
    -DPX_KATANA_OP_API_VER=${KATANA_API_OP_API_VERSION}
    -DPX_KATANA_ATTRFNC_API_VER=${KATANA_API_ATTRFNC_API_VERSION}
    )

add_subdirectory(lib)
add_subdirectory(plugin)
add_subdirectory(python)
