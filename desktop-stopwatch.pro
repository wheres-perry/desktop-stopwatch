QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17 static

# Optimize release build flags
QMAKE_CXXFLAGS_RELEASE -= -g
QMAKE_CXXFLAGS_RELEASE += -s
QMAKE_LFLAGS_RELEASE += -s
QMAKE_CXXFLAGS += -ffunction-sections
QMAKE_LFLAGS += -Wl,--gc-sections

win32:CONFIG(release, debug|release): {
    QMAKE_CXXFLAGS += -mthreads
    QMAKE_LFLAGS += -mthreads
}

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Set installation path
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# Specify application icon
RC_ICONS = stopwatch.ico

# Include resources
RESOURCES += \
    icons.qrc
