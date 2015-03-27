import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import QtQuick.Layouts 1.1
import "." as App

ToolBar {
    id: toolBar

    RowLayout {
        anchors.fill: parent
        anchors.margins: spacing
        Item { Layout.fillWidth: true }
    }
}
