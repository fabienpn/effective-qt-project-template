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

QT += core

PROJECT_DIR = $$PWD/..

INCLUDEPATH += $$PROJECT_DIR/src \
    $$PROJECT_DIR/src/core \
    $$PROJECT_DIR/src/gui \
    $$PROJECT_DIR/src/app

#Code coverage. gcov is required. Comment this if you do not want to use gcov code coverage
linux-g++:CONFIG(debug, debug|release) {
    QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage -O0
    LIBS += -lgcov
}
