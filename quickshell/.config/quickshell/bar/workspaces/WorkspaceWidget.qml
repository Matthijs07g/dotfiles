pragma ComponentBehavior: Bound
import Quickshell.Hyprland
import QtQuick

Row {
    id: space
    property var screen

    spacing: 3

    Repeater {
        model: Hyprland.workspaces.values
        delegate: WorkspaceItem {
            required property int id
            property bool active: Hyprland.monitors.values.find(m => m.name === space.screen.name)?.activeWorkspace.id === id
            workspaceId: id
            isActive: active
        }
    }
}

