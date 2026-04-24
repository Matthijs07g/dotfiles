import Quickshell
import Quickshell.Io
import QtQuick

Item {
    id: root
    property string label
    property string icon
    property string color
    property var command: []
    signal clicked()

    width: 126
    height: 32

    Rectangle {
        anchors.fill: parent
        radius: 6
        color: hoverArea.containsMouse 
            ? Qt.rgba(0.75, 0.3, 1.0, 0.15) 
            : "transparent"
    }

    Row {
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 8
        anchors.left: parent.left
        spacing: 5

        Text {
            text: root.icon
            color: root.color
            font.pixelSize: 15
            font.family: "JetBrainsMono Nerd Font"
        }

        Text {
            text: root.label
            color: root.color
            font.pixelSize: 14
            font.family: "JetBrainsMono Nerd Font"
        }
    }

    MouseArea {
        id: hoverArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            if (root.command.length > 0) {
                proc.running = true
            }
            root.clicked()
        }
    }

    Process {
        id: proc
        command: root.command.length > 0 ? root.command : ["echo", ""]
        running: false
    }
}