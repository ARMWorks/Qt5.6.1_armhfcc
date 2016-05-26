#configuration
CONFIG +=  cross_compile shared qpa no_mocdepend release qt_no_framework
host_build {
    QT_ARCH = x86_64
    QT_TARGET_ARCH = arm
} else {
    QT_ARCH = arm
    QMAKE_DEFAULT_LIBDIRS = /usr/lib/gcc/arm-linux-gnueabihf/4.9 /opt/qt5cc/sysroot/lib/arm-linux-gnueabihf /opt/qt5cc/sysroot/lib /opt/qt5cc/sysroot/usr/lib/arm-linux-gnueabihf /opt/qt5cc/sysroot/usr/lib
    QMAKE_DEFAULT_INCDIRS = /opt/qt5cc/sysroot/usr/include/c++/4.9 /opt/qt5cc/sysroot/usr/include/arm-linux-gnueabihf/c++/4.9 /opt/qt5cc/sysroot/usr/include/c++/4.9/backward /usr/lib/gcc/arm-linux-gnueabihf/4.9/include /usr/lib/gcc/arm-linux-gnueabihf/4.9/include-fixed /opt/qt5cc/sysroot/usr/include/arm-linux-gnueabihf /opt/qt5cc/sysroot/usr/include
}
QT_CONFIG +=  minimal-config small-config medium-config large-config full-config fontconfig libudev evdev tslib linuxfb c++11 c++14 accessibility shared qpa reduce_exports clock-gettime clock-monotonic posix_fallocate mremap getaddrinfo ipv6ifname getifaddrs inotify eventfd threadsafe-cloexec system-png png system-freetype harfbuzz system-zlib nis cups iconv glib dbus dbus-linked openssl libproxy rpath alsa pulseaudio gstreamer-1.0 concurrent audio-backend release

#versioning
QT_VERSION = 5.6.1
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 6
QT_PATCH_VERSION = 1

#namespaces
QT_LIBINFIX = 
QT_NAMESPACE = 

QT_EDITION = OpenSource

# pkgconfig
PKG_CONFIG_SYSROOT_DIR = /opt/qt5cc/sysroot/
PKG_CONFIG_LIBDIR = /opt/qt5cc/sysroot//usr/lib/pkgconfig:/opt/qt5cc/sysroot//usr/share/pkgconfig:/opt/qt5cc/sysroot//usr/lib/arm-linux-gnueabihf/pkgconfig

# sysroot
!host_build {
    QMAKE_CFLAGS    += --sysroot=$$[QT_SYSROOT]
    QMAKE_CXXFLAGS  += --sysroot=$$[QT_SYSROOT]
    QMAKE_LFLAGS    += --sysroot=$$[QT_SYSROOT]
}

QT_COMPILER_STDCXX = 199711
QT_GCC_MAJOR_VERSION = 4
QT_GCC_MINOR_VERSION = 9
QT_GCC_PATCH_VERSION = 2
