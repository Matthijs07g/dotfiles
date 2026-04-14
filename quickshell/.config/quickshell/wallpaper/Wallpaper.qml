import Quickshell
import QtQuick
import Quickshell.Wayland

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                top: true
                bottom: true
                left: true
                right: true
            }

            WlrLayershell.layer: WlrLayer.Background
            WlrLayershell.exclusionMode: ExclusionMode.Ignore

            Image {
                anchors.fill: parent
                source: "nebula.jpg"
                fillMode: Image.PreserveAspectCrop
            }
        }
    }
}