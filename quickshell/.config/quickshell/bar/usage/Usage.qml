pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root
    property string cpu: "0%"
    property string memory: "0%"

    Process {
        command: ["bash", "-c", "vmstat 2 | stdbuf -oL awk 'NR>2 {print 100-$15\"%\"}'"]
        running: true

        stdout: SplitParser {
            onRead: data => root.cpu = data.trim()
        }
    }

    Process {
        command: ["bash", "-c", "free -s 2 | stdbuf -oL awk '/Mem:/ {printf \"%.0f%%\\n\", $3/$2*100}'"]
        running: true

        stdout: SplitParser {
            onRead: data => root.memory = data.trim()
        }
    }
}