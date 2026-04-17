import QtQuick


Row {
    spacing: 16

    Row {
        spacing: 8
        
        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: " "
            scale: 1.2
            color: "white"
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: Usage.cpu
            color: "white"
            scale: 1.2
            font.bold: true
        }
    }
    
    Row {
        spacing: 8

        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: " "
            scale: 1.2
            color: "white"
        }

        Text{
            anchors.verticalCenter: parent.verticalCenter
            text: Usage.memory
            color: "white"
            scale: 1.2
            font.bold: true
        }
    }
}
