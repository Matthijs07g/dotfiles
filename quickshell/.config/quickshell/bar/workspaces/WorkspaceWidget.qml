pragma ComponentBehavior: Bound
import Quickshell.Hyprland
import QtQuick

Row {
    id: space
    property var screen

    spacing: 6

    Repeater {
        model: Hyprland.workspaces.values
        delegate: WorkspaceItem {
            required property int id
            property bool active: true
            workspaceId: id
            isActive: active
        }
    }

    Component.onCompleted: {
        console.log(Hyprland.monitors.values)
    }
}

