TEMPLATE = app

QT += qml quick quick_private qml_private
CONFIG += c++11

SOURCES += main.cpp \
    square.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    MyButton.qml

HEADERS += \
    square.h
