#-------------------------------------------------
#
# Project created by QtCreator 2013-06-26T16:20:33
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = bin/BinaryTreeExampleApp
TEMPLATE = app
OBJECTS_DIR = temp/
MOC_DIR = $$OBJECTS_DIR
RCC_DIR = $$OBJECTS_DIR
UI_DIR = $$OBJECTS_DIR


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../genericbinarytree/release/ -lgenericbinarytree
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../genericbinarytree/debug/ -lgenericbinarytree
else:unix:!macx: LIBS += -L$$OUT_PWD/../genericbinarytree/ -lgenericbinarytree

INCLUDEPATH += $$PWD/..
DEPENDPATH += $$PWD/..

win32:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../genericbinarytree/release/genericbinarytree.lib
else:win32:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../genericbinarytree/debug/genericbinarytree.lib
else:unix:!macx: PRE_TARGETDEPS += $$OUT_PWD/../genericbinarytree/libgenericbinarytree.a

QMAKE_CXXFLAGS += -std=c++11
