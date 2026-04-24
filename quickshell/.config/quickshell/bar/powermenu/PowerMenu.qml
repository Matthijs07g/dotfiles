import Quickshell
import Quickshell.Wayland
import QtQuick

Text {
    id: root
    text: "󰐥"
    color: "#f472b6"
    font.family: "JetBrainsMono Nerd Font"
    scale: 1.6
    font.bold: true
    topPadding: 1

    property bool menuOpen: false

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: root.menuOpen = !root.menuOpen
        hoverEnabled: true
    }

    PanelWindow {
        id: popup
        visible: root.menuOpen
        implicitWidth: 180
        implicitHeight: 200
        color: "transparent"
        WlrLayershell.layer: WlrLayer.Overlay

        anchors {
            top: true
            right: true
        }

        Rectangle {
            anchors.rightMargin: 5
            anchors.topMargin: 3
            anchors.fill: parent
            color: Qt.rgba(0.1, 0.1, 0.1, 0.95)
            radius: 8
            gradient: Gradient {
                GradientStop { position: 0.0; color: Qt.rgba(0.08, 0.04, 0.12, 0.95) }
                GradientStop { position: 1.0; color: Qt.rgba(0.08, 0.04, 0.12, 0.90) }
            }

            Column {
                anchors.centerIn: parent
                spacing: 15

                PowerItem {
                    scale: 1.1
                    label: "Lock"
                    icon: ""
                    command: ["hyprlock"]
                    color: "#c084fc"
                    onClicked: root.menuOpen = false
                }

                PowerItem {
                    scale: 1.1
                    label: "Logout"
                    icon: "󰍃"
                    command: ["hyprctl", "dispatch", "exit"]
                    color: "#c084fc"
                    onClicked: root.menuOpen = false
                }

                PowerItem {
                    scale: 1.1
                    label: "Reboot"
                    icon: "󰜉"
                    command: ["systemctl", "reboot"]
                    color: "#f472b6"
                    onClicked: root.menuOpen = false
                }

                PowerItem {
                    scale: 1.1
                    label: "Shutdown"
                    icon: "󰐥"
                    command: ["systemctl", "poweroff"]
                    color: "#ff4d6d"
                    onClicked: root.menuOpen = false
                }
            }
        }
    }
}