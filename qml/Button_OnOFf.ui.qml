import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts 1.11
import QtQuick3D 1.15

Item {
    id: element
    width: 100
    height: 42

    BorderItem {
        id: buttonBorder
        x: 0
        y: 0
        width: 100
        height: 42
        radius: 1
        strokeWidth: 2
        strokeColor: "#020202"

        RectangleItem {
            id: leftButton
            x: 0
            y: 0
            width: 50
            height: 42
            radius: 0
            fillColor: "#4af32f"
            strokeWidth: 1
            strokeColor: "#00230000"
        }

        RectangleItem {
            id: rightButton
            x: 48
            y: 0
            width: 52
            height: 42
            radius: 0
            fillColor: "#020202"
            strokeWidth: 1
            strokeColor: "#00230000"
        }

        RectangleItem {
            id: principalButton
            x: 0
            y: 0
            width: 50
            height: 42
            radius: 0
            strokeColor: "#020202"
            strokeWidth: 2

            Text {
                id: onoff
                x: 14
                y: 14
                text: qsTr("OFF")
                font.pixelSize: 12
            }
        }
    }

    MouseArea {
        id: mouseAreaOff
        x: 0
        y: -1
        width: 100
        height: 43

        Connections {
            target: mouseAreaOff
            onClicked: {
                element.state = "onState"
            }
        }
    }

    MouseArea {
        id: mouseAreaOn
        x: 0
        y: -1
        width: 100
        height: 43
        visible: false
        Connections {
            target: mouseAreaOn
        }

        Connections {
            target: mouseAreaOn
            onClicked: {
                element.state = ""
            }
        }
    }
    states: [
        State {
            name: "onState"

            PropertyChanges {
                target: principalButton
                x: 50
                y: 0
            }

            PropertyChanges {
                target: onoff
                x: 16
                y: 14
                width: 18
                height: 15
                text: qsTr("ON")
            }

            PropertyChanges {
                target: leftButton
                x: 0
                y: 0
                width: 52
                strokeWidth: 3
            }

            PropertyChanges {
                target: mouseAreaOn
                visible: true
            }

            PropertyChanges {
                target: mouseAreaOff
                visible: false
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;3d-active-scene:-1}
}
##^##*/

