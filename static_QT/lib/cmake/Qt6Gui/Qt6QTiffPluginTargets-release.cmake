#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QTiffPlugin" for configuration "Release"
set_property(TARGET Qt6::QTiffPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qt6::QTiffPlugin PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/plugins/imageformats/libqtiff.a"
  )

list(APPEND _cmake_import_check_targets Qt6::QTiffPlugin )
list(APPEND _cmake_import_check_files_for_Qt6::QTiffPlugin "${_IMPORT_PREFIX}/plugins/imageformats/libqtiff.a" )

# Import target "Qt6::QTiffPlugin_init" for configuration "Release"
set_property(TARGET Qt6::QTiffPlugin_init APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qt6::QTiffPlugin_init PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_RELEASE ""
  IMPORTED_OBJECTS_RELEASE "${_IMPORT_PREFIX}/plugins/imageformats/objects-Release/QTiffPlugin_init/QTiffPlugin_init.cpp.obj"
  )

list(APPEND _cmake_import_check_targets Qt6::QTiffPlugin_init )
list(APPEND _cmake_import_check_files_for_Qt6::QTiffPlugin_init "${_IMPORT_PREFIX}/plugins/imageformats/objects-Release/QTiffPlugin_init/QTiffPlugin_init.cpp.obj" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
