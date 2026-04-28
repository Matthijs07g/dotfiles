import Quickshell
import Quickshell.Wayland
import Quickshell.Services.Pipewire
import QtQuick

Text {
    id: root
    text: "󰕾"
    color: "#c084fc"
    font.family: "JetBrainsMono Nerd Font"
    font.bold: true
    scale: 1.5

    property bool menuOpen: false

    MouseArea {
        anchors.fill: parent
        onClicked: root.menuOpen = !root.menuOpen
    }

    PanelWindow {
        id: popup
        visible: root.menuOpen
        implicitWidth: content.implicitWidth + 48
        implicitHeight: content.implicitHeight + 48
        color: "transparent"
        WlrLayershell.layer: WlrLayer.Overlay
        anchors {
            top: true
            right: true
            
        }

        MouseArea {
            anchors.fill: parent
            onClicked: root.menuOpen = false
        }

        Rectangle {
            anchors.fill: parent
            radius: 8
            anchors.rightMargin: 10
            gradient: Gradient {
                GradientStop { position: 0.0; color: Qt.rgba(0.08, 0.04, 0.12, 0.95) }
                GradientStop { position: 1.0; color: Qt.rgba(0.08, 0.04, 0.12, 0.90) }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {}
            }

            Column {
                id: content
                anchors.centerIn: parent
                spacing: 16

                VolumeSelection {}
                VolumeSlider {}
            }
        }
    }
}