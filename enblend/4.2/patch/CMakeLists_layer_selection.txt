set(LAYER_SELECTION_FILES
    info.h info.cc layer_selection.h layer_selection.cc
    selector.h selector.cc
)
add_library(layer_selection STATIC ${LAYER_SELECTION_FILES})
