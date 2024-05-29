# Additional target information for Qt6QWindowsIntegrationPlugin
if(NOT DEFINED QT_DEFAULT_IMPORT_CONFIGURATION)
    set(QT_DEFAULT_IMPORT_CONFIGURATION RELEASE)
endif()
__qt_internal_promote_target_to_global_checked(Qt6::QWindowsIntegrationPlugin)
get_target_property(_qt_imported_location Qt6::QWindowsIntegrationPlugin IMPORTED_LOCATION_RELEASE)
get_target_property(_qt_imported_location_default Qt6::QWindowsIntegrationPlugin IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::QWindowsIntegrationPlugin" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QWindowsIntegrationPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_location)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin PROPERTY IMPORTED_LOCATION_RELWITHDEBINFO "${_qt_imported_location}")
endif()

# Import target "Qt6::QWindowsIntegrationPlugin" for configuration "MinSizeRel"
set_property(TARGET Qt6::QWindowsIntegrationPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
__qt_internal_promote_target_to_global_checked(Qt6::QWindowsIntegrationPlugin_init)
get_target_property(_qt_imported_objects Qt6::QWindowsIntegrationPlugin_init IMPORTED_OBJECTS_RELEASE)
get_target_property(_qt_imported_clr Qt6::QWindowsIntegrationPlugin_init IMPORTED_COMMON_LANGUAGE_RUNTIME_RELEASE)
get_target_property(_qt_imported_objects_default Qt6::QWindowsIntegrationPlugin_init IMPORTED_OBJECTS_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_clr_default Qt6::QWindowsIntegrationPlugin_init IMPORTED_COMMON_LANGUAGE_RUNTIME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::QWindowsIntegrationPlugin_init" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QWindowsIntegrationPlugin_init APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_objects)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_init PROPERTY IMPORTED_OBJECTS_RELWITHDEBINFO "${_qt_imported_objects}")
endif()
if(_qt_imported_clr)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_init PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME_RELWITHDEBINFO "${_qt_imported_clr}")
endif()

# Import target "Qt6::QWindowsIntegrationPlugin_init" for configuration "MinSizeRel"
set_property(TARGET Qt6::QWindowsIntegrationPlugin_init APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_objects)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_init PROPERTY IMPORTED_OBJECTS_MINSIZEREL "${_qt_imported_objects}")
endif()
if(_qt_imported_clr)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_init PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME_MINSIZEREL "${_qt_imported_clr}")
endif()

# Default configuration
if(_qt_imported_objects_default)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_init PROPERTY IMPORTED_OBJECTS "${_qt_imported_objects_default}")
endif()
if(_qt_imported_clr_default)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_init PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME "${_qt_imported_clr_default}")
endif()
__qt_internal_promote_target_to_global_checked(Qt6::QWindowsIntegrationPlugin_resources_1)
get_target_property(_qt_imported_objects Qt6::QWindowsIntegrationPlugin_resources_1 IMPORTED_OBJECTS_RELEASE)
get_target_property(_qt_imported_clr Qt6::QWindowsIntegrationPlugin_resources_1 IMPORTED_COMMON_LANGUAGE_RUNTIME_RELEASE)
get_target_property(_qt_imported_objects_default Qt6::QWindowsIntegrationPlugin_resources_1 IMPORTED_OBJECTS_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_clr_default Qt6::QWindowsIntegrationPlugin_resources_1 IMPORTED_COMMON_LANGUAGE_RUNTIME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::QWindowsIntegrationPlugin_resources_1" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_1 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_objects)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_1 PROPERTY IMPORTED_OBJECTS_RELWITHDEBINFO "${_qt_imported_objects}")
endif()
if(_qt_imported_clr)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_1 PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME_RELWITHDEBINFO "${_qt_imported_clr}")
endif()

# Import target "Qt6::QWindowsIntegrationPlugin_resources_1" for configuration "MinSizeRel"
set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_1 APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_objects)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_1 PROPERTY IMPORTED_OBJECTS_MINSIZEREL "${_qt_imported_objects}")
endif()
if(_qt_imported_clr)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_1 PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME_MINSIZEREL "${_qt_imported_clr}")
endif()

# Default configuration
if(_qt_imported_objects_default)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_1 PROPERTY IMPORTED_OBJECTS "${_qt_imported_objects_default}")
endif()
if(_qt_imported_clr_default)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_1 PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME "${_qt_imported_clr_default}")
endif()
__qt_internal_promote_target_to_global_checked(Qt6::QWindowsIntegrationPlugin_resources_2)
get_target_property(_qt_imported_objects Qt6::QWindowsIntegrationPlugin_resources_2 IMPORTED_OBJECTS_RELEASE)
get_target_property(_qt_imported_clr Qt6::QWindowsIntegrationPlugin_resources_2 IMPORTED_COMMON_LANGUAGE_RUNTIME_RELEASE)
get_target_property(_qt_imported_objects_default Qt6::QWindowsIntegrationPlugin_resources_2 IMPORTED_OBJECTS_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_clr_default Qt6::QWindowsIntegrationPlugin_resources_2 IMPORTED_COMMON_LANGUAGE_RUNTIME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::QWindowsIntegrationPlugin_resources_2" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_2 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_objects)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_2 PROPERTY IMPORTED_OBJECTS_RELWITHDEBINFO "${_qt_imported_objects}")
endif()
if(_qt_imported_clr)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_2 PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME_RELWITHDEBINFO "${_qt_imported_clr}")
endif()

# Import target "Qt6::QWindowsIntegrationPlugin_resources_2" for configuration "MinSizeRel"
set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_2 APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_objects)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_2 PROPERTY IMPORTED_OBJECTS_MINSIZEREL "${_qt_imported_objects}")
endif()
if(_qt_imported_clr)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_2 PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME_MINSIZEREL "${_qt_imported_clr}")
endif()

# Default configuration
if(_qt_imported_objects_default)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_2 PROPERTY IMPORTED_OBJECTS "${_qt_imported_objects_default}")
endif()
if(_qt_imported_clr_default)
    set_property(TARGET Qt6::QWindowsIntegrationPlugin_resources_2 PROPERTY IMPORTED_COMMON_LANGUAGE_RUNTIME "${_qt_imported_clr_default}")
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
