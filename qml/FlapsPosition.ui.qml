import QtQuick 2.12
import Tfg 1.0
import QtQuick.Studio.Components 1.0

Item {
    id: airfoilflaps
    width: 300
    height: 80
    property bool degrees10: false
    property bool degrees20: false
    property bool degrees30: false
    property bool degrees40: false

    Image {
        id: airfoil
        x: 0
        y: -5
        width: 305
        height: 90
        fillMode: Image.PreserveAspectFit
        source: "images/airfoil.png"

        Item {
            id: flapRotation
            x: 220
            y: 38
            width: 20
            height: 25
            rotation: 0

            TriangleItem {
                id: triangle
                x: 33
                y: -12
                width: 16
                height: 60
                radius: 0
                strokeWidth: 1.5
                rotation: 97
                fillColor: "#ffffff"
                strokeColor: "#020202"
            }
        }
    }
    states: [
        State {
            name: "10degFlaps"
            when: airfoilflaps.degrees10

            PropertyChanges {
                target: flapRotation
                rotation: 10
            }
        },
        State {
            name: "20degFlaps"
            when: airfoilflaps.degrees20
            PropertyChanges {
                target: flapRotation
                rotation: 20
            }
        },
        State {
            name: "30degFlaps"
            when: airfoilflaps.degrees30

            PropertyChanges {
                target: flapRotation
                rotation: 30
            }
        },
        State {
            name: "40degFlaps"
            when: airfoilflaps.degrees40

            PropertyChanges {
                target: flapRotation
                rotation: 40
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:80;width:300}
}
##^##*/

