pragma Singleton

import QtQuick 2.4

QtObject {
    id: activeSingleton

    property string statusText: qsTr("Welcome")

//    Binding on statusText {
//        when: world
//        value: { if (world) qsTr("[Debug: %1]  [Paused: %2]  [Gravity: %3]").arg(
//                 scene.debug.toString()).arg((!world.running).toString()).arg(world.gravity); }
//    }
}
