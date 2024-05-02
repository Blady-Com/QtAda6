# QtAda6 - An Ada toolkit based on Qt

## Prerequisites

We should have installed first:

- GNAT Ada compiler version GPL 2021 or FSF 12.1
- Python version 3.7 or newer

## Install Qt for Python

We install PySide 6 the official Python bindings for Qt under a user Python environment:

```
% cd $HOME
% python3 -m venv env
% source env/bin/activate
% pip install pyside6
% deactivate
```

## Get QtAda6

```
% cd $HOME
% git clone https://github.com/Blady-Com/QtAda6.git
```

## Run the tests

### Test_01: Python initialization

It tests if PySide is correctly installed:

```
% cd $HOME
% cd QtAda6
% gprbuild -P qtada6_tests.gpr -XTarget_OS=OSX test_01
% PYTHONPATH=$HOME/env/lib/python3.9/site-packages:$PWD/tests bin/test_01
/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/Current/lib/
libpython3.9.dylib
.dylib
Python version: 3.9.6 (default, May  7 2023, 23:32:45) 
[Clang 14.0.3 (clang-1403.0.22.14.1)]
Python CWD: /Users/me/Documents/Programmation/Qt/QtAda6
Python Enum:  2
PySide6 version: 6.5.2
Python Enum:  3
Python Enum:  2
Python Enum:  1
Python Enum:  2
<class 'NoneType'>
Exiting
```

Note: this is the command line and the result on macOS, change Target_OS with yours (see `$HOME/QtAda6/simple_components/lib_components.gpr` for possible values) and change PYTHONPATH to yours.

We can tell where is a specific Python library location with the Load procedure:
`Py.Load ("Path/to/libpython");`

### Test_02: QtCore

It tests few QtCore API:

```
% cd $HOME
% cd QtAda6
% gprbuild -P qtada6_tests.gpr -XTarget_OS=OSX test_02
% PYTHONPATH=$HOME/env/lib/python3.9/site-packages bin/test_02
PySide version: 6.5.2
QtCore version: 6.5.2
Today: 10
Current folder: /Users/me/Documents/Programmation/Qt/QtAda6
Current machine: MicMac
HOME: /Users/me
DashDotLine:4
Exiting
```

This program also shows the way of programing with QtAda6:

1. initialize Python interpreter
2. take the global interpreter lock
3. initialize QtAda6
4. declare QTAda6 objects and initialize them
5. call QtAda6 API
6. finalize QtAda6 objects
7. finalize QtAda6
8. finalize Python interpreter

### Test_03: QtGui

It tests few QtGui API:

```
% cd $HOME
% cd QtAda6
% gprbuild -P qtada6_tests.gpr -XTarget_OS=OSX test_03
% PYTHONPATH=$HOME/env/lib/python3.9/site-packages:$PWD/tests bin/test_03
PySide version: 6.5.2
QtCore version: 6.5.2
0
Exiting
```

A GUI app with a graphic clock is launched:

![](https://github.com/Blady-Com/QtAda6/blob/master/media/analog_clock.png)

### Test_04: QtWidgets

It tests few QtWidgets API:

```
% cd $HOME
% cd QtAda6
% gprbuild -P qtada6_tests.gpr -XTarget_OS=OSX test_04
% PYTHONPATH=$HOME/env/lib/python3.9/site-packages bin/test_04
PySide version: 6.5.2
0
Exiting
```

A GUI app with widgets label and button is launched:

![](https://github.com/Blady-Com/QtAda6/blob/master/media/hello_world.png)

## Limitations

This is the very first release whose goal is mostly to get feedbacks on how it is usable or if the class hierarchy is as user friendly as C++ version.

Known limitations are :

- Only QtCore, QtGui and QtWidgets are provided
- Signal, composed types and so on are not or partially translated
- Class inheritance is not available on Ada side
- No memory management

## Get involved

Post your feedbacks on [QtAda6](https://github.com/Blady-Com/QtAda6) GitHub issues.

## Authors

- Simple Components are written by Dmitry A. Kazakov ([www.dmitry-kazakov.de/ada/components.htm](https://www.dmitry-kazakov.de/ada/components.htm)). Licence: GPLv2 with generics exception.
- UXStrings are written by Pascal Pignard ([github.com/Blady-Com/UXStrings](https://github.com/Blady-Com/UXStrings)). Licence: CeCILL-C. 
- QtAda6 bindings have been generated from Qt for Python ([www.qt.io/qt-for-python](https://www.qt.io/qt-for-python)). Licence: LGPLv3/GPLv3.

## Licence

QtAda6 is free software released under [CeCILL-C](http://www.cecill.info) V2.1.

Pascal Pignard, September-November 2023, January-May 2024.
