import Quickshell
import "./datetime"
import QtQuick
import "./usage"

Scope{
  Variants {
    model: Quickshell.screens;

    PanelWindow {
      required property var modelData

      screen: modelData
      implicitHeight: 30
      color: "transparent"

      anchors {
        top: true
        left: true
        right: true
      }

      Rectangle {
        anchors.fill: parent
        color: Qt.rgba(255, 255, 255, 0.06)
        radius: 13
      }

      DateWidget {
        anchors.centerIn: parent
      }

      Row {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
        spacing: 20

        UsageWidget {}
        ClockWidget {}
      }
    }
  }
}