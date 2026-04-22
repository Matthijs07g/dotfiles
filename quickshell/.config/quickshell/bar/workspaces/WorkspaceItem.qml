import QtQuick
import Quickshell.Hyprland

Item {
    id: root
    property int workspaceId
    property bool isActive

    implicitHeight: 28
    implicitWidth: 28

    Rectangle {
        implicitHeight: parent.implicitHeight
        implicitWidth: parent.implicitWidth
        color: Qt.rgba(1, 1, 1, 0.13)
        radius: 8
        gradient: Gradient {
            GradientStop { position: 0.0; color: Qt.rgba(1, 1, 1, 0.15) }
            GradientStop { position: 1.0; color: Qt.rgba(1, 1, 1, 0.05) }
        }
    }

    Text {
        text: root.workspaceId.toString()
        scale: 1.3
        color: "white"
        opacity: 0.9
        font.bold: root.isActive
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MouseArea {
        anchors.fill: parent
        onClicked: Hyprland.workspaces.values.find(w => w.id === root.workspaceId)?.activate()  
    }
}