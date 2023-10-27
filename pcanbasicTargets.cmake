# Create an imported target for custom-library
add_library(pcanbasic::pcanbasic UNKNOWN IMPORTED)

# Set the location of the library's .lib file
set_target_properties(pcanbasic::pcanbasic PROPERTIES
    IMPORTED_LOCATION_DEBUG "${CMAKE_CURRENT_LIST_DIR}/lib/PCANBasic.lib"
    IMPORTED_LOCATION_RELEASE "${CMAKE_CURRENT_LIST_DIR}/lib/PCANBasic.lib"
)

# Include directories for your library
set_target_properties(pcanbasic::pcanbasic PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include"
)
