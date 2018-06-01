#-------------------------------------------------
#
# Project created by QtCreator 2018-04-20T13:11:22
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Jetson_Video_Grabber
TEMPLATE = app
INCLUDEPATH += /usr/local/include/opencv
LIBS += -L/usr/local/lib -lopencv_core -lopencv_imgcodecs -lopencv_imgproc -lopencv_highgui -lopencv_videoio
SOURCES += main.cpp\
        mainwindow.cpp \
    camerasettings.cpp

HEADERS  += mainwindow.h \
    camerasettings.h

FORMS    += mainwindow.ui
