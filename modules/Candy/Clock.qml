import QtQuick 2.4

QtObject {
    id: clock

    property string date
    property string time

    property var dateFormat: Locale.ShortFormat
    property var locale: Qt.locale()
    property var timeFormat: "h:mm AP"
    property int updateInterval: 60000

    function update() {
        var d = new Date();
        date = d.toLocaleDateString(locale, dateFormat);
        time = d.toLocaleTimeString(locale, timeFormat);
    }

    Component.onCompleted: update();

    property Timer timer: Timer {
        interval: clock.updateInterval
        repeat: true
        running: true
        onTriggered: clock.update();
    }
}
