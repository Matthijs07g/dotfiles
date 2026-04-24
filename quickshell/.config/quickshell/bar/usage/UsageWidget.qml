import QtQuick


Row {
    spacing: 16

    Row {
        spacing: 8
        
        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: " "
            scale: 1.2
            color: "#c084fc"
            font.family: "JetBrainsMono Nerd Font"
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: Usage.cpu
            color: "#ffffff"
            scale: 1.2
            font.bold: true
            font.family: "JetBrainsMono Nerd Font"
            opacity: 0.8
        }
    }
    
    Row {
        spacing: 8

        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: " "
            scale: 1.2
            color: "#c084fc"
            font.family: "JetBrainsMono Nerd Font"
        }

        Text{
            anchors.verticalCenter: parent.verticalCenter
            text: Usage.memory
            color: "#ffffff"
            scale: 1.2
            font.bold: true
            font.family: "JetBrainsMono Nerd Font"
            opacity:0.8
        }
    }
}
