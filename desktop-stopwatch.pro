QT += core gui widgets  # Combined widgets here for Qt5+

CONFIG += c++17 static

VERSION = 0.1

# Release Build Optimizations
CONFIG(release, debug|release) {
    QMAKE_CXXFLAGS += -O2 -flto  # General optimization flags
    QMAKE_LFLAGS  += -flto  # Link-time optimization
} else {  # Debug build (for easier debugging)
    QMAKE_CXXFLAGS += -g  # Include debug symbols
}

# Additional Optimization (if applicable to your platform/compiler)
QMAKE_CXXFLAGS += -ffunction-sections
QMAKE_LFLAGS   += -Wl,--gc-sections

# Threading (Windows)
win32 {
    QMAKE_CXXFLAGS += -mthreads
    QMAKE_LFLAGS   += -mthreads
}

# Source Files
SOURCES += main.cpp mainwindow.cpp

# Header Files
HEADERS += mainwindow.h

# UI Forms
FORMS += mainwindow.ui

# Resource Files (icons, etc.)
RESOURCES += icons.qrc

# Set Executable Name
TARGET = QtStopwatch_v$$VERSION

# Installation Paths (optional)
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# Application Icon
RC_ICONS = stopwatch.ico
