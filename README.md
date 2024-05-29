# Lightweight Qt Stopwatch
Version: 0.1 (Initial Release) 
A simple, portable, and always-on-top stopwatch application built with Qt for Windows.

## Features

- Start, Stop, and Reset functionality
- Always-on-top display for convenient time tracking
- Minimalist and intuitive user interface
- Small footprint and portable design
- Logs every timestamp

## Installation

Download desktop_stopwatch.exe from the release page and move to desired path.
Run desktop_stopwatch.exe.
License

## Building

This project uses a statically compiled version of [Qr 6.7.1]([url](https://download.qt.io/archive/qt/6.7/6.7.1/single/)) to create a standalone .EXE file. The build can be found in the project files under [static_Qt]([url](https://github.com/wheres-perry/desktop-stopwatch/tree/master/static_Qt)). 
To create the static build of Qt yourself, you can use this [guide]([url](https://doc.qt.io/qt-6/windows-building.html)) from the Qt docs. My static Qt build was tightly configured to minimize the size using the following configuration with mingw-32:
```
.\configure -prefix %DESKTOP_STOPWATCH_BUILD_DIR% -static -release -platform win32-g++ -opensource -confirm-license -qt-zlib -qt-libpng -qt-webp -qt-libjpeg -qt-freetype -no-opengl -no-sql-sqlite -no-sql-mysql -no-sql-odbc -no-sql-psql -no-zstd -make libs -skip qt3d -skip qtactiveqt -skip qtandroidextras -skip qtcharts -skip qtconnectivity -skip qtdatavis3d -skip qtdoc -skip qtgamepad -skip qtlocation -skip qtlottie -skip qtmacextras -skip qtmultimedia -skip qtnetworkauth -skip qtpurchasing -skip qtquick3d -skip qtquickcontrols -skip qtquickcontrols2 -skip qtquicktimeline -skip qtremoteobjects -skip qtscript -skip qtsensors -skip qtwayland -skip qtwebglplugin -skip qtwebview -skip qtwebengine -skip qmldbg -skip qtgraphs -skip qtquick3dphysics -skip qtsql -skip qttexttospeech -skip qtuitools -skip qtwebchannel -skip qtwebsockets -skip qthelp -skip qtopcua -skip qtpositioning -skip qtprintsupport -skip qtquickwidgets -skip qt5compat -skip qtcoap -skip qtmqtt -skip qtquickeffectmaker -skip qtscxml -skip qtspeech -skip qtvirtualkeyboard -no-accessibility -no-ltcg -make libs -nomake tools -nomake examples -nomake tests -skip qttools -skip qtdeclarative -skip qttranslations

```
To run the configure script, set the environment variable `DESKTOP_STOPWATCH_BUILD_DIR` to the path of the `static_Qt` folder within your cloned repository, or put the full path after `-prefix`.


This project is licensed under the GNU Lesser General Public License version 3 (LGPLv3). Please see the LICENSE file for details.
