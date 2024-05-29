# Copyright (C) 2024 The Qt Company Ltd.
# SPDX-License-Identifier: BSD-3-Clause

set(PeakCanBusPlugin_FOUND FALSE)

# note: _third_party_deps example: "ICU\\;FALSE\\;1.0\\;i18n uc data;ZLIB\\;FALSE\\;\\;"
set(__qt_PeakCanBusPlugin_third_party_deps "")
_qt_internal_find_third_party_dependencies("PeakCanBusPlugin" __qt_PeakCanBusPlugin_third_party_deps)

set(__qt_use_no_default_path_for_qt_packages "NO_DEFAULT_PATH")
if(QT_DISABLE_NO_DEFAULT_PATH_IN_QT_PACKAGES)
    set(__qt_use_no_default_path_for_qt_packages "")
endif()

# note: target_deps example: "Qt6Core\;5.12.0;Qt6Gui\;5.12.0"
set(__qt_PeakCanBusPlugin_target_deps "Qt6Core\;6.7.1;Qt6Network\;6.7.1;Qt6SerialBus\;6.7.1")
set(__qt_PeakCanBusPlugin_find_dependency_paths "${CMAKE_CURRENT_LIST_DIR}/..;${_qt_cmake_dir}")
_qt_internal_find_qt_dependencies("PeakCanBusPlugin" __qt_PeakCanBusPlugin_target_deps
                                  __qt_PeakCanBusPlugin_find_dependency_paths)

set(PeakCanBusPlugin_FOUND TRUE)
