import Quickshell
import QtQuick
import "./datetime"
import "./usage"
import "./battery"
import "./powermenu"
import "./workspaces"

Scope{
  Variants {
    model: Quickshell.screens;

    PanelWindow {
      id: panel
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
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 20
        spacing: 20

        WorkspaceWidget {
          screen: panel.screen
        }
      }

      Row {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
        spacing: 20

        UsageWidget {}
        BatteryWidget {}
        ClockWidget {}
        PowerMenu {}
      }
    }
  }
}