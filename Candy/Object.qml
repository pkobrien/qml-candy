import QtQuick 2.4

QtObject {
    id: object

    default property alias children: object.__children
    property list<QtObject> __children
}
