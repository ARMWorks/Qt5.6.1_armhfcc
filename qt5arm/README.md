#Qt 5.6.1 Target Libs#

Install to /usr/local/qt5arm on target device.


On device add to linker by running:

    echo "/usr/local/qt5arm/lib" > /etc/ld.so.conf.d/qt5arm.conf
    ldconfig
