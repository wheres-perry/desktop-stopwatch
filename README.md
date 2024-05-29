# Qt Stopwatch
Version: 0.1 (Initial Release) 
A simple, portable, and always-on-top stopwatch application built with Qt for Windows.

## Features

- Start, Stop, and Reset functionality
- Always-on-top display for convenient time tracking
- Minimalist and intuitive user interface
- Small footprint and portable design
- Logs every timestamp

## Building

This project uses a statically compiled version of QT 6.7.1 to create a standalone .EXE file. The QT build was tightly configured to minimize the size using the following configuration:
```
.\configure -prefix ./build -static -release -platform win32-g++ -opensource -confirm-license -qt-zlib -qt-libpng -qt-webp -qt-libjpeg -qt-freetype -no-opengl -no-sql-sqlite -no-sql-mysql -no-sql-odbc -no-sql-psql -no-zstd -make libs -skip qt3d -skip qtactiveqt -skip qtandroidextras -skip qtcharts -skip qtconnectivity -skip qtdatavis3d -skip qtdoc -skip qtgamepad -skip qtlocation -skip qtlottie -skip qtmacextras -skip qtmultimedia -skip qtnetworkauth -skip qtpurchasing -skip qtquick3d -skip qtquickcontrols -skip qtquickcontrols2 -skip qtquicktimeline -skip qtremoteobjects -skip qtscript -skip qtsensors -skip qtwayland -skip qtwebglplugin -skip qtwebview -skip qtwebengine -skip qmldbg -skip qtgraphs -skip qtquick3dphysics -skip qtsql -skip qttexttospeech -skip qtuitools -skip qtwebchannel -skip qtwebsockets -skip qthelp -skip qtopcua -skip qtpositioning -skip qtprintsupport -skip qtquickwidgets -skip qt5compat -skip qtcoap -skip qtmqtt -skip qtquickeffectmaker -skip qtscxml -skip qtspeech -skip qtvirtualkeyboard -no-accessibility -no-ltcg -make libs -nomake tools -nomake examples -nomake tests -skip qttools -skip qtdeclarative -skip qttranslations

```

Installation

Download simple_stopwatch.exe from the release page and move to desired path.
Run simple_stopwatch.exe.
License

This project is licensed under the GNU Lesser General Public License version 3 (LGPLv3). Please see the LICENSE file for details.
