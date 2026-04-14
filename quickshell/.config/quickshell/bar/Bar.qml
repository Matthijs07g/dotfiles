import Quickshell
import "./datetime"
import QtQuick

Scope{
  Variants {
    model: Quickshell.screens;

    PanelWindow {
      required property var modelData

      screen: modelData
      implicitHeight: 30
      color: "transparent"

      Rectangle {
        anchors.fill: parent
        color: Qt.rgba(255, 255, 255, 0.06)
        radius: 13
      }
      
      anchors {
        top: true
        left: true
        right: true
      }

      ClockWidget {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
      }

      DateWidget {
        anchors.centerIn: parent
      }
    }
  }
}