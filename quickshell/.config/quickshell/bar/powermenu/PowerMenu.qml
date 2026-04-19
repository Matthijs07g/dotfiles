import Quickshell
import Quickshell.Wayland
import QtQuick

Text {
    id: root
    text: "󰐥"
    color: "#ffffff"
    scale: 1.3
    font.bold: true

    property bool menuOpen: false

    MouseArea {
        anchors.fill: parent
        onClicked: root.menuOpen = !root.menuOpen
    }

    PanelWindow {
        id: popup
        visible: root.menuOpen
        implicitWidth: 150
        implicitHeight: 180
        color: "transparent"
        WlrLayershell.layer: WlrLayer.Overlay

        anchors {
            top: true
            right: true
        }

        Rectangle {
            anchors.fill: parent
            color: Qt.rgba(0.1, 0.1, 0.1, 0.95)
            radius: 8

            Column {
                anchors.centerIn: parent
                spacing: 8

                PowerItem {
                    label: "Lock"
                    icon: ""
                    command: ["hyprlock"]
                    onClicked: root.menuOpen = false
                }

                PowerItem {
                    label: "Logout"
                    icon: "󰍃"
                    command: ["hyprctl", "dispatch", "exit"]
                    onClicked: root.menuOpen = false
                }

                PowerItem {
                    label: "Reboot"
                    icon: "󰜉"
                    command: ["systemctl", "reboot"]
                    onClicked: root.menuOpen = false
                }

                PowerItem {
                    label: "Shutdown"
                    icon: "󰐥"
                    command: ["systemctl", "poweroff"]
                    onClicked: root.menuOpen = false
                }
            }
        }
    }
}