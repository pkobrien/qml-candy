import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import QtQuick.Layouts 1.1
import "." as App

ToolButton {
    id: toolButton

    Layout.maximumHeight: 30
    Layout.maximumWidth: Layout.maximumHeight

    style: ButtonStyle {
        label: Text {
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
//            color: App.SystemPaletteSingleton.buttonText(control.enabled)
            font.pointSize: 99
            fontSizeMode: Text.Fit
            text: control.action.fontIcon !== undefined ? control.action.fontIcon : control.text

            Binding on font.family {
                value: control.action.fontFamily
                when: control.action.fontFamily !== undefined
            }
        }
    }
}
