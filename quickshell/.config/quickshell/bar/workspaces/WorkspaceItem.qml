import QtQuick
import Quickshell.Hyprland

Item {
    id: root
    property int workspaceId
    property bool isActive
    implicitHeight: 28
    implicitWidth: 28

    Rectangle {
        anchors.fill: parent
        radius: 8
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: root.isActive
                    ? Qt.rgba(0.75, 0.3, 1.0, 0.8)
                    : mouseArea.containsMouse
                        ? Qt.rgba(0.75, 0.3, 1.0, 0.4)
                        : Qt.rgba(0.75, 0.52, 0.99, 0.25)
            }
            GradientStop {
                position: 1.0
                color: root.isActive
                    ? Qt.rgba(0.75, 0.3, 1.0, 0.4)
                    : mouseArea.containsMouse
                        ? Qt.rgba(0.75, 0.3, 1.0, 0.2)
                        : Qt.rgba(0.75, 0.52, 0.99, 0.1)
            }
        }
    }

    Text {
        text: root.workspaceId.toString()
        scale: 1.3
        color: root.isActive ? "#ffffff" : "#e0d0ff"
        opacity: root.isActive ? 1.0 : 0.6
        font.bold: root.isActive
        font.family: "JetBrainsMono Nerd Font"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: Hyprland.workspaces.values.find(w => w.id === root.workspaceId)?.activate()
    }
}