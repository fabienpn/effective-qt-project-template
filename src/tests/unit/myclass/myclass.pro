#
#   Copyright 2013 Fabien Pierre-Nicolas.
#      - Primarily authored by Fabien Pierre-Nicolas
#
#   This file is part of effective-qt-project-template, a template for an effective, simple and cross platform Qt project.
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

include(../../../testcommon.pri)

CONFIG(release, debug|release) {
    LIBS += -L$$PROJECT_DIR/lib \
        -lcore
    unix:PRE_TARGETDEPS += \
        $$PROJECT_DIR/lib/libcore.a
    win32-msvc:PRE_TARGETDEPS += \
        $$PROJECT_DIR/lib/libcore.lib
}

CONFIG(debug, debug|release) {
    LIBS += -L$$PROJECT_DIR/lib \
        -lcored
    unix:PRE_TARGETDEPS += \
        $$PROJECT_DIR/lib/libcored.a
    win32-msvc:PRE_TARGETDEPS += \
        $$PROJECT_DIR/lib/libcored.lib
}

HEADERS += \
    testmyclass.h

SOURCES += \
    testmyclass.cpp
