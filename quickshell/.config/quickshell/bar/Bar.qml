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
        gradient: Gradient {
            GradientStop { position: 0.0; color: Qt.rgba(1, 1, 1, 0.10) }
            GradientStop { position: 1.0; color: Qt.rgba(1, 1, 1, 0.05) }
        }
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