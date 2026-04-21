import Quickshell
import Quickshell.Io
import QtQuick

Item {
    id: root
    property string label
    property string icon
    property var command: []
    signal clicked()

    width: 126
    height: 32

    Row {
        anchors.verticalCenter: parent.verticalCenter
        spacing: 8

        Text {
            text: icon
            color: "#ffffff"
            font.pixelSize: 15
        }

        Text {
            text: label
            color: "#ffffff"
            font.pixelSize: 14
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (root.command.length > 0) {
                proc.running = true
            }
            root.clicked()
        }
    }

    Process {
        id: proc
        command: root.command
        running: false
    }
}