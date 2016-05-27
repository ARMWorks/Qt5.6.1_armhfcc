#Qt 5.6.1 Cross Compile Host Toolchain and Target Libs#
##Built to compile for Debian Jessie (DIBS) target on Debian Jessie host##

##Installation on Host##

This was done on a fresh install of Debian Jessie, it is recommended to start fresh as I found the possibity for problems on systems that have been updated from previous versions, or that may have been through other attempts at cross compiling.

###Download Qt Files###

    sudo mkdir /opt/qt5cc (This path is required and should be owned by your normal user)
    git clone https://github.com/ARMWorks/Qt5.6.1_armhfcc.git /opt/qt5cc

###Configure and Install Host Packages###

Add repo and key to available sources.
    sudo echo "deb http://emdebian.org/tools/debian/ jessie main" > /etc/apt/sources.list.d/crosstools.list
    curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -


Add armhf architecture and necessary packages.

    sudo dpkg --add-architecture armhf
    sudo apt-get install crossbuild-essentials-armhf


##Cross Compiling Qt Application##
Compiling is pretty simple, its just a matter of running the correct qmake in your project directory. Or associating it and the /usr/bin/arm-linux-gnueabihf- toolchain with the right settings in Qt Creator.

    cd /path/to/your/project
    /opt/qt5cc/qt5host/bin/qmake
    make

You can then copy your necessary files over to your device, or include them in a DIBS Overlay.


##Installation on Device##

Copy directory qt5arm/ to /usr/local/ then run:

    echo "/usr/local/qt5arm/lib" > /etc/ld.so.conf.d/qt5arm.conf
    ldconfig
