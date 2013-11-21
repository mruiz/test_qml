import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.0
import QtMultimedia 5.0

Item {
    width: parent.width
    height: parent.height

    MediaPlayer {
        id: playMusic
        source: "file:///home/mruiz/Music/Beirut - Santa Fe.mp3"
    }

    Row {
        spacing: 10
        anchors.centerIn: parent

        Button {
            anchors.margins: 20
            text: "Play"
            style: touchStyle
            onClicked: playMusic.play()
        }

        Button {
            anchors.margins: 20
            style: touchStyle
            text: "Pause"
            onClicked: playMusic.stop()
        }
    }

    Component {
        id: touchStyle
        ButtonStyle {
            panel: Item {
                implicitHeight: 50
                implicitWidth: 320
                BorderImage {
                    anchors.fill: parent
                    antialiasing: true
                    border.bottom: 8
                    border.top: 8
                    border.left: 8
                    border.right: 8
                    anchors.margins: control.pressed ? -4 : 0
                    source: control.pressed ? "qrc:/Images/button_pressed.png" : "qrc:/Images/button_default.png"
                    Text {
                        text: control.text
                        anchors.centerIn: parent
                        color: "white"
                        font.pixelSize: 23
                        renderType: Text.NativeRendering
                    }
                }
            }
        }
    }
}

