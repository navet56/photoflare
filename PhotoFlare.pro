lessThan(QT_VERSION, 5.6.0): error(This project requires Qt 5.6.0 or later)

QT += core gui widgets printsupport

TARGET = PhotoFlare
TEMPLATE = app
CONFIG += c++11

# This path is used inside ui_mainwindow.h in order to find ColorBoxWidget.h
INCLUDEPATH += ./src/widgets \
               ./src/dialogs \
               ./src/tools \
               ./src/progress \
               ./src/managers
               ./src/workers

# Project settings for Windows. Adjust the paths as needed on your system.
win32 {
    INCLUDEPATH +=  $$PWD/external/GraphicsMagick-1.3.21/Magick++/lib
    LIBS += -L$$PWD/external/GraphicsMagick-1.3.21/VisualMagick/lib -lCORE_RL_Magick++_
    RC_ICONS += pixmaps/logo.ico
}

# Project settings for Linux. Adjust the paths as needed on your system.
linux {
    INCLUDEPATH += /usr/include/GraphicsMagick
    LIBS += -L/usr/lib -lGraphicsMagick++
}

# Project settings for Mac OS. Adjust the paths as needed on your system.
macx {
  INCLUDEPATH += /usr/local/Cellar/graphicsmagick/1.3.24/include/GraphicsMagick
  LIBS += -L$$PWD/../../../../usr/local/Cellar/graphicsmagick/1.3.24/lib/ -lGraphicsMagick++
  LIBS += -L$$PWD/../../../../usr/local/Cellar/graphicsmagick/1.3.24/lib/ -lGraphicsMagick
  LIBS += -L$$PWD/../../../../usr/local/Cellar/graphicsmagick/1.3.24/lib/ -lGraphicsMagickWand
  INCLUDEPATH += $$PWD/../../../../usr/local/Cellar/graphicsmagick/1.3.24/include/GraphicsMagick
  DEPENDPATH += $$PWD/../../../../usr/local/Cellar/graphicsmagick/1.3.24/include/GraphicsMagick
  PRE_TARGETDEPS += $$PWD/../../../../usr/local/Cellar/graphicsmagick/1.3.24/lib/libGraphicsMagick++.la
  PRE_TARGETDEPS += $$PWD/../../../../usr/local/Cellar/graphicsmagick/1.3.24/lib/libGraphicsMagick.la
  PRE_TARGETDEPS += $$PWD/../../../../usr/local/Cellar/graphicsmagick/1.3.24/lib/libGraphicsMagickWand.la
  LIBS += -lbz2 -lxml2 -lz -lm
}

SOURCES += src/main.cpp \
    src/mainwindow.cpp \
    src/dialogs/aboutdialog.cpp \
    src/dialogs/NewDialog.cpp \
    src/dialogs/ScanDevicesDialog.cpp \
    src/dialogs/textdialog.cpp \
    src/dialogs/prefsdialog.cpp \
    src/dialogs/batchdialog.cpp \
    src/dialogs/gradientdialog.cpp \
    src/dialogs/transparentdialog.cpp \
    src/dialogs/imagepropertiesdialog.cpp \
    src/dialogs/huedialog.cpp \
    src/dialogs/outerframedialog.cpp \
    src/dialogs/compressiondialog.cpp \
    src/dialogs/plugindialog.cpp \
    src/widgets/PaintWidget.cpp \
    src/Settings.cpp \
    src/managers/FilterManager.cpp \
    src/managers/ToolManager.cpp \
    src/tools/Tool.cpp \
    src/tools/PaintBrushTool.cpp \
    src/tools/ColourPickerTool.cpp \
    src/tools/PaintBucketTool.cpp \
    src/tools/PointerTool.cpp \
    src/tools/TextTool.cpp \
    src/tools/PaintBrushAdvTool.cpp \
    src/tools/SprayCanTool.cpp \
    src/tools/LineTool.cpp \
    src/tools/MagicWandTool.cpp \
    src/tools/StampTool.cpp \
    src/tools/BlurTool.cpp \
    src/toolSettings/pointersettingswidget.cpp \
    src/toolSettings/PaintBrushSettingsWidget.cpp \
    src/toolSettings/PaintBrushAdvSettingsWidget.cpp \
    src/toolSettings/SprayCanSettingsWidget.cpp \
    src/toolSettings/LineSettingsWidget.cpp \
    src/toolSettings/MagicWandSettingsWidget.cpp \
    src/toolSettings/StampSettingsWidget.cpp \
    src/toolSettings/BlurSettingsWidget.cpp \
    src/managers/ScanManager.cpp \
    src/progress/QProgressIndicator.cpp \
    src/widgets/imagepositionwidget.cpp \
    src/workers/BatchProcessWorker.cpp \
    src/widgets/brushtypecombobox.cpp \
    src/widgets/colorboxwidget.cpp \
    src/progress/batchprogress.cpp \
    src/workers/filterworker.cpp \
    src/tools/EraserTool.cpp \
    src/toolSettings/erasersettingswidget.cpp \
    src/tools/SmudgeTool.cpp \
    src/toolSettings/SmudgeSettingsWidget.cpp \
    src/dialogs/colourmanagerdialog.cpp \
    src/dialogs/checkupdatedialog.cpp \
    src/dialogs/dropshadowdialog.cpp

HEADERS += src/mainwindow.h \
    src/dialogs/aboutdialog.h \
    src/dialogs/NewDialog.h \
    src/dialogs/ScanDevicesDialog.h \
    src/dialogs/textdialog.h \
    src/dialogs/prefsdialog.h \
    src/dialogs/batchdialog.h \
    src/dialogs/gradientdialog.h \
    src/dialogs/transparentdialog.h \
    src/dialogs/imagepropertiesdialog.h \
    src/dialogs/huedialog.h \
    src/dialogs/outerframedialog.h \
    src/dialogs/compressiondialog.h \
    src/dialogs/plugindialog.h \
    src/widgets/PaintWidget.h \
    src/Settings.h \
    src/managers/FilterManager.h \
    src/managers/ToolManager.h \
    src/tools/Tool.h \
    src/tools/PaintBrushTool.h \
    src/tools/ColourPickerTool.h \
    src/tools/PaintBucketTool.h \
    src/tools/PointerTool.h \
    src/tools/TextTool.h \
    src/tools/MagicWandTool.h \
    src/tools/PaintBrushAdvTool.h \
    src/tools/SprayCanTool.h \
    src/tools/LineTool.h \
    src/tools/StampTool.h \
    src/tools/BlurTool.h \
    src/managers/ScanManager.h \
    src/progress/QProgressIndicator.h \
    src/toolSettings/pointersettingswidget.h \
    src/toolSettings/PaintBrushSettingsWidget.h \
    src/toolSettings/PaintBrushAdvSettingsWidget.h \
    src/toolSettings/SprayCanSettingsWidget.h \
    src/toolSettings/LineSettingsWidget.h \
    src/toolSettings/MagicWandSettingsWidget.h \
    src/toolSettings/StampSettingsWidget.h \
    src/toolSettings/BlurSettingsWidget.h \
    src/widgets/imagepositionwidget.h \
    src/workers/BatchProcessWorker.h \
    src/widgets/brushtypecombobox.h \
    src/widgets/colorboxwidget.h \
    src/progress/batchprogress.h \
    src/workers/filterworker.h \
    src/tools/EraserTool.h \
    src/toolSettings/erasersettingswidget.h \
    src/tools/SmudgeTool.h \
    src/toolSettings/SmudgeSettingsWidget.h \
    src/dialogs/colourmanagerdialog.h \
    src/dialogs/checkupdatedialog.h \
    src/dialogs/dropshadowdialog.h

FORMS += src/mainwindow.ui \
    src/dialogs/aboutdialog.ui \
    src/dialogs/NewDialog.ui \
    src/dialogs/scandevicesdialog.ui \
    src/dialogs/textdialog.ui \
    src/dialogs/prefsdialog.ui \
    src/dialogs/batchdialog.ui \
    src/dialogs/gradientdialog.ui \
    src/dialogs/transparentdialog.ui \
    src/dialogs/imagepropertiesdialog.ui \
    src/dialogs/huedialog.ui \
    src/dialogs/outerframedialog.ui \
    src/dialogs/compressiondialog.ui \
    src/dialogs/plugindialog.ui \
    src/widgets/ColorBoxWidget.ui \
    src/widgets/BrushTypeComboBox.ui \
    src/widgets/imagepositionwidget.ui \
    src/progress/batchprogress.ui \
    src/toolSettings/pointersettingswidget.ui \
    src/toolSettings/PaintBrushSettingsWidget.ui \
    src/toolSettings/PaintBrushAdvSettingsWidget.ui \
    src/toolSettings/SprayCanSettingsWidget.ui \
    src/toolSettings/LineSettingsWidget.ui \
    src/toolSettings/MagicWandSettingsWidget.ui \
    src/toolSettings/StampSettingsWidget.ui \
    src/toolSettings/BlurSettingsWidget.ui \ 
    src/toolSettings/erasersettingswidget.ui \
    src/toolSettings/smudgesettingswidget.ui \
    src/dialogs/colourmanagerdialog.ui \
    src/dialogs/checkupdatedialog.ui \
    src/dialogs/dropshadowdialog.ui

RESOURCES += \
    Icons.qrc

include (external/qt-solutions/qtsingleapplication/qtsingleapplication.pri)

INCLUDEPATH += external/qt-solutions/qtsingleapplication

TRANSLATIONS = languages/en.ts\
               languages/fr.ts\
               languages/nl.ts\
               languages/de.ts
