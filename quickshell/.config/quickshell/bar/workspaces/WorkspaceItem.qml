import QtQuick

Item {
    id: root
    property string workspaceId
    property bool isActive

    implicitHeight: 17
    implicitWidth: 20

    Text {
        text: workspaceId
        scale: 1.3
        color: "white"
        opacity: 0.9
        font.bold: isActive
    }
}