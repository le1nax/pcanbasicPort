# Provide information about the custom-library package
include(CMakeFindDependencyMacro)
include("${CMAKE_CURRENT_LIST_DIR}/pcanbasicTargets.cmake")

# Set up any library-specific dependencies (if any)
# Example:
# find_dependency(AnotherDependency REQUIRED)

# Specify include directories for the custom library
# set(pcanbasic_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/include")

# Specify the location of the .lib file 
set(pcanbasic_LIBRARIES
    optimized "${CMAKE_CURRENT_LIST_DIR}/lib/PCANBasic.lib"
    debug "${CMAKE_CURRENT_LIST_DIR}/lib/PCANBasic.lib"
)

# Specify the location of the .dll file 
set(pcanbasic_DLL "${CMAKE_CURRENT_LIST_DIR}/bin/PCANBasic.dll")

# Set a flag to indicate that the library was found
set(pcanbasic_FOUND TRUE)