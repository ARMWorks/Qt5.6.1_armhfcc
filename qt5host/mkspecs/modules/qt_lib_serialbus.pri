QT.serialbus.VERSION = 5.6.2
QT.serialbus.MAJOR_VERSION = 5
QT.serialbus.MINOR_VERSION = 6
QT.serialbus.PATCH_VERSION = 2
QT.serialbus.name = QtSerialBus
QT.serialbus.module = Qt5SerialBus
QT.serialbus.libs = $$QT_MODULE_LIB_BASE
QT.serialbus.includes = $$QT_MODULE_INCLUDE_BASE $$QT_MODULE_INCLUDE_BASE/QtSerialBus
QT.serialbus.frameworks =
QT.serialbus.bins = $$QT_MODULE_BIN_BASE
QT.serialbus.libexecs = $$QT_MODULE_LIBEXEC_BASE
QT.serialbus.plugins = $$QT_MODULE_PLUGIN_BASE
QT.serialbus.imports = $$QT_MODULE_IMPORT_BASE
QT.serialbus.qml = $$QT_MODULE_QML_BASE
QT.serialbus.plugin_types = canbus
QT.serialbus.depends = core
QT.serialbus.run_depends = network serialport
QT.serialbus.module_config = v2
QT.serialbus.DEFINES = QT_SERIALBUS_LIB
QT_MODULES += serialbus
