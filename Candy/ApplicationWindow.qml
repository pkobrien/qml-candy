import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import "." as App

ApplicationWindow {
    id: appWindow

    property var dp: App.Units.dp

    visible: true

    Component.onCompleted: {
        App.Units.pixelDensity = Qt.binding(function() { return Screen.pixelDensity; });
    }
}
