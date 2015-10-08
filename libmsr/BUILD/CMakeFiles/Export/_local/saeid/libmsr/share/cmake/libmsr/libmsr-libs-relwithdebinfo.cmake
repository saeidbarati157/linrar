#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "msr" for configuration "RelWithDebInfo"
set_property(TARGET msr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(msr PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "m"
  IMPORTED_LOCATION_RELWITHDEBINFO "/local/saeid/libmsr/lib/libmsr.so"
  IMPORTED_SONAME_RELWITHDEBINFO "libmsr.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS msr )
list(APPEND _IMPORT_CHECK_FILES_FOR_msr "/local/saeid/libmsr/lib/libmsr.so" )

# Import target "msr-static" for configuration "RelWithDebInfo"
set_property(TARGET msr-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(msr-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "m"
  IMPORTED_LOCATION_RELWITHDEBINFO "/local/saeid/libmsr/lib/libmsr.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS msr-static )
list(APPEND _IMPORT_CHECK_FILES_FOR_msr-static "/local/saeid/libmsr/lib/libmsr.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
