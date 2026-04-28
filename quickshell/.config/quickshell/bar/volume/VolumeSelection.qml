// VolumeSelection.qml
import Quickshell.Services.Pipewire
import QtQuick

Column {
    width: 250
    height: childrenRect.height
    spacing: 4

    Repeater {
        model: Pipewire.nodes.values.filter(n => n.audio !== null && n.isSink && !n.isStream)
        delegate: Text {
            required property var modelData
            text: modelData.nickname
            color: "#e0d0ff"
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 14
        }
    }
}