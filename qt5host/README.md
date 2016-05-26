#Qt 5.6.1 Cross Compile Host Toolchain#
##Built to compile for Debian Jessie (DIBS) target on Debian Jessie host##

Install to path /opt/qt5cc/qt5host

Add armhf architecture:

* dpkg --add-architecture armhf

Requires these packages be installed on host:

* crossbuild-essentials-armhf
* gcc-4.9-arm-linux-gnueabihf

Preconfigured device names:

* linux-arm-mini210-g++
