CONFIG +=  cross_compile compile_examples qpa largefile precompile_header use_gold_linker enable_new_dtags neon pcre
QT_BUILD_PARTS +=  libs
QT_NO_DEFINES =  EGL EGLFS EGL_X11 IMAGEFORMAT_JPEG OPENGL OPENVG STYLE_GTK XRENDER ZLIB
QT_QCONFIG_PATH = 
host_build {
    QT_CPU_FEATURES.x86_64 =  mmx sse sse2
} else {
    QT_CPU_FEATURES.arm =  neon
}
QT_COORD_TYPE = double
QT_CFLAGS_MYSQL   = -I/usr/include/mysql
QT_LFLAGS_MYSQL   = -L/usr/lib/arm-linux-gnueabihf -lmysqlclient_r -lpthread -lz -lm -ldl
QT_LFLAGS_ODBC   = -lodbc
styles += mac fusion windows
DEFINES += QT_NO_MTDEV
CONFIG += use_libmysqlclient_r
QT_LIBS_DBUS = -L/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf -ldbus-1 
QT_CFLAGS_DBUS = -I/opt/qt5cc/sysroot//usr/include/dbus-1.0 -I/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf/dbus-1.0/include 
QT_HOST_CFLAGS_DBUS = -I/opt/qt5cc/sysroot//usr/include/dbus-1.0 -I/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf/dbus-1.0/include 
QT_CFLAGS_GLIB = -pthread -I/opt/qt5cc/sysroot//usr/include/glib-2.0 -I/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf/glib-2.0/include 
QT_LIBS_GLIB = -L/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf -lgthread-2.0 -pthread -lglib-2.0 
QT_CFLAGS_PULSEAUDIO = -D_REENTRANT -I/opt/qt5cc/sysroot//usr/include/glib-2.0 -I/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf/glib-2.0/include 
QT_LIBS_PULSEAUDIO = -L/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf -lpulse-mainloop-glib -lpulse -lglib-2.0 
QMAKE_CFLAGS_FONTCONFIG = -I/opt/qt5cc/sysroot//usr/include/freetype2 
QMAKE_LIBS_FONTCONFIG = -L/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf -lfontconfig -lfreetype 
QMAKE_INCDIR_LIBUDEV = 
QMAKE_LIBS_LIBUDEV = -L/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf -ludev 
DEFINES += QT_NO_LIBINPUT
sql-drivers = 
sql-plugins =  mysql sqlite
