import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0

Item {
    id: white
    width: 100
    height: 100
    property bool off: false
    property bool on: true

    PieItem {
        id: pie
        x: 40
        y: 40
        width: 20
        height: 20
        fillColor: "#fcf8d8"
        strokeColor: "#000000"
        end: 360
    }

    Image {
        id: image
        x: 45
        y: 45
        width: 10
        height: 10
        visible: true
        source: "images/cancelar.png"
        fillMode: Image.PreserveAspectFit
    }
    states: [
        State {
            name: "OffState"
            when: white.off

            PropertyChanges {
                target: pie
                opacity: 0.349
            }

            PropertyChanges {
                target: image
                x: 45
                y: 45
                width: 10
                height: 10
            }
        },
        State {
            name: "OnState"
            when: white.on

            PropertyChanges {
                target: image
                visible: false
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#4c4e50";formeditorZoom:6}
}
##^##*/

