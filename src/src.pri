QT -= gui
QT += network dbus

CONFIG += link_pkgconfig console

PKGCONFIG += buteosyncfw5 libsignon-qt5 accounts-qt5
PKGCONFIG += signon-oauth2plugin KF5CalendarCore libmkcal-qt5

packagesExist(libsailfishkeyprovider) {
    PKGCONFIG += libsailfishkeyprovider
    DEFINES += USE_SAILFISHKEYPROVIDER
}

INCLUDEPATH += $$PWD

SOURCES += \
        $$PWD/caldavclient.cpp \
        $$PWD/report.cpp \
        $$PWD/put.cpp \
        $$PWD/delete.cpp \
        $$PWD/propfind.cpp \
        $$PWD/reader.cpp \
        $$PWD/settings.cpp \
        $$PWD/request.cpp \
        $$PWD/authhandler.cpp \
        $$PWD/incidencehandler.cpp \
        $$PWD/notebooksyncagent.cpp \
        $$PWD/logging.cpp

HEADERS += \
        $$PWD/caldavclient.h \
        $$PWD/buteo-caldav-plugin.h \
        $$PWD/report.h \
        $$PWD/put.h \
        $$PWD/delete.h \
        $$PWD/propfind.h \
        $$PWD/reader.h \
        $$PWD/settings.h \
        $$PWD/request.h \
        $$PWD/authhandler.h \
        $$PWD/incidencehandler.h \
        $$PWD/notebooksyncagent.h \
        $$PWD/logging.h

OTHER_FILES += \
        $$PWD/xmls/client/caldav.xml \
        $$PWD/xmls/sync/caldav-sync.xml

MOC_DIR=$$PWD/.moc/
OBJECTS_DIR=$$PWD/.obj/
