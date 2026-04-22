import QtQuick
import Quickshell.Services.UPower as UPowerService

Item {
    id: root

    implicitHeight: 20
    implicitWidth: row.implicitWidth

    readonly property var upower: UPowerService
    readonly property var battery: upower.devices ? upower.devices.find(d => d.type === UPowerService.UPowerDeviceType.Battery) : null

    function icon(p, charging, isLaptop) {
        if (!isLaptop) return "󰍹" 

        if (charging) return ""

        if (p >= 90) return ""
        if (p >= 65) return ""
        if (p >= 40) return ""
        if (p >= 15) return ""
        return ""
    }

    // true = laptop, false = desktop
    readonly property bool isLaptop: battery !== null && battery !== undefined

    Row {
        id: row
        spacing: 6
        anchors.verticalCenter: parent.verticalCenter

        Text {
            text: root.icon(
                root.battery ? root.battery.percentage : 100,
                root.battery ? root.battery.charging : false,
                root.isLaptop
            )

            font.bold: true
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 16
            color: root.isLaptop && root.battery && root.battery.percentage < 20
                ? "#ff5555"
                : "white"
        }

        Text {
            text: root.isLaptop && root.battery
                ? Math.round(root.battery.percentage) + "%"
                : "" 

            font.pixelSize: 14
            font.bold: true
            color: root.isLaptop && root.battery && root.battery.percentage < 20
                ? "#ff5555"
                : "white"
        }
    }
}