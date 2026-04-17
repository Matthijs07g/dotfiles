import QtQuick
import Quickshell.Services.UPower as UPowerService

Item {
    id: root

    implicitHeight: 20
    implicitWidth: row.implicitWidth

    readonly property var upower: UPowerService
    readonly property var battery: upower.devices.find(d => d.type === "Battery")

    function icon(p, charging, isLaptop) {
        if (!isLaptop) return "󰍹"   // desktop icon

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
            text: icon(
                battery ? battery.percentage : 100,
                battery ? battery.charging : false,
                isLaptop
            )
            
            font.bold: true
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 16
            color: isLaptop && battery && battery.percentage < 20
                ? "#ff5555"
                : "white"
        }

        Text {
            text: isLaptop && battery
                ? Math.round(battery.percentage) + "%"
                : ""   // no percentage on desktop

            font.pixelSize: 14
            font.bold: true
            color: isLaptop && battery && battery.percentage < 20
                ? "#ff5555"
                : "white"
        }
    }
}