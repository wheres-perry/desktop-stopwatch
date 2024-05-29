# Additional target information for Qt6VirtualCanBusPlugin
if(NOT DEFINED QT_DEFAULT_IMPORT_CONFIGURATION)
    set(QT_DEFAULT_IMPORT_CONFIGURATION RELEASE)
endif()
__qt_internal_promote_target_to_global_checked(Qt6::VirtualCanBusPlugin)
get_target_property(_qt_imported_location Qt6::VirtualCanBusPlugin IMPORTED_LOCATION_RELEASE)
get_target_property(_qt_imported_location_default Qt6::VirtualCanBusPlugin IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::VirtualCanBusPlugin" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::VirtualCanBusPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_location)
    set_property(TARGET Qt6::VirtualCanBusPlugin PROPERTY IMPORTED_LOCATION_RELWITHDEBINFO "${_qt_imported_location}")
endif()

# Import target "Qt6::VirtualCanBusPlugin" for configuration "MinSizeRel"
set_property(TARGET Qt6::VirtualCanBusPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::VirtualCanBusPlugin PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::VirtualCanBusPlugin PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
__qt_internal_promote_target_to_global_checked(Qt6::VirtualCanBusPlugin_init)
get_target_property(_qt_imported_objects Qt6::VirtualCanBusPlugin_init IMPORTED_OBJECTS_RELEASE)
get_target_property(_qt_imported_clr Qt6::VirtualCanBusPlugin_init IMPORTED_COMMON_LANGUAGE_RUNTIME_RELEASE)
get_target_property(_qt_imported_objects_default Qt6::VirtualCanBusPlugin_init IMPORTED_OBJECTS_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_clr_default Qt6::VirtualCanBusPlugin_init IMPORTED_COMMON_LANGUAGE_RUNTIME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::VirtualCanBusPlugin_init" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::VirtualCanBusPlugin_init APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_objects)
    set_property(TARGET Qt6::VirtualCanBusPlugin_init PROPERTY IMPORTED_OBJECTS_RELWITHDEBINFO "${_qt_imported_objects}")
endif()
if(_qt_imported_clr)
    set_property(TARGET Qt6::VirtualCanBusPlugin_init PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME_RELWITHDEBINFO "${_qt_imported_clr}")
endif()

# Import target "Qt6::VirtualCanBusPlugin_init" for configuration "MinSizeRel"
set_property(TARGET Qt6::VirtualCanBusPlugin_init APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_objects)
    set_property(TARGET Qt6::VirtualCanBusPlugin_init PROPERTY IMPORTED_OBJECTS_MINSIZEREL "${_qt_imported_objects}")
endif()
if(_qt_imported_clr)
    set_property(TARGET Qt6::VirtualCanBusPlugin_init PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME_MINSIZEREL "${_qt_imported_clr}")
endif()

# Default configuration
if(_qt_imported_objects_default)
    set_property(TARGET Qt6::VirtualCanBusPlugin_init PROPERTY IMPORTED_OBJECTS "${_qt_imported_objects_default}")
endif()
if(_qt_imported_clr_default)
    set_property(TARGET Qt6::VirtualCanBusPlugin_init PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME "${_qt_imported_clr_default}")
endif()

unset(_qt_imported_location)
unset(_qt_imported_location_default)
unset(_qt_imported_soname)
unset(_qt_imported_soname_default)
unset(_qt_imported_objects)
unset(_qt_imported_objects_default)
unset(_qt_imported_clr)
unset(_qt_imported_clr_default)
unset(_qt_imported_configs)
