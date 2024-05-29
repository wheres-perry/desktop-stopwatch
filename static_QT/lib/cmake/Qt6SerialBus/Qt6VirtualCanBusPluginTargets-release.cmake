#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::VirtualCanBusPlugin" for configuration "Release"
set_property(TARGET Qt6::VirtualCanBusPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qt6::VirtualCanBusPlugin PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/plugins/canbus/libqtvirtualcanbus.a"
  )

list(APPEND _cmake_import_check_targets Qt6::VirtualCanBusPlugin )
list(APPEND _cmake_import_check_files_for_Qt6::VirtualCanBusPlugin "${_IMPORT_PREFIX}/plugins/canbus/libqtvirtualcanbus.a" )

# Import target "Qt6::VirtualCanBusPlugin_init" for configuration "Release"
set_property(TARGET Qt6::VirtualCanBusPlugin_init APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qt6::VirtualCanBusPlugin_init PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_RELEASE ""
  IMPORTED_OBJECTS_RELEASE "${_IMPORT_PREFIX}/plugins/canbus/objects-Release/VirtualCanBusPlugin_init/VirtualCanBusPlugin_init.cpp.obj"
  )

list(APPEND _cmake_import_check_targets Qt6::VirtualCanBusPlugin_init )
list(APPEND _cmake_import_check_files_for_Qt6::VirtualCanBusPlugin_init "${_IMPORT_PREFIX}/plugins/canbus/objects-Release/VirtualCanBusPlugin_init/VirtualCanBusPlugin_init.cpp.obj" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
