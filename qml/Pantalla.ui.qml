import QtQuick 2.11
import QtQuick.Timeline 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts 1.11

Item {
    id: screen
    width: 1920
    height: 1084
    state: "homeState"

    Exo {}

    Background_t {
        id: background_t
        x: 0
        y: 0
        width: 1920
        height: 1084
    }

    MouseArea {
        id: settingsClick
        x: -1
        y: -3
        width: 139
        height: 85
        Connections {
            target: settingsClick
        }
    }

    MouseArea {
        id: engineClick
        x: 1660
        y: 930
        width: 230
        height: 105

        Connections {
            target: engineClick
            onClicked: {
                screen.state = "engineState"
            }
        }
    }

    MouseArea {
        id: radioClick
        x: 1256
        y: 930
        width: 230
        height: 105

        Connections {
            target: radioClick
            onClicked: {
                screen.state = "radioState"
            }
        }
    }

    MouseArea {
        id: homeClick
        x: 846
        y: 930
        width: 230
        height: 105

        Connections {
            target: homeClick
            onClicked: {
                screen.state = "homeState"
            }
        }
    }

    MouseArea {
        id: planeClick
        x: 437
        y: 930
        width: 230
        height: 105

        Connections {
            target: planeClick
            onClicked: {
                screen.state = "planeState"
            }
        }
    }

    MouseArea {
        id: mapClick
        x: 28
        y: 930
        width: 230
        height: 105

        Connections {
            target: mapClick
            onClicked: {
                screen.state = "mapState"
            }
        }
    }

    Item {
        id: centerScreen
        x: 398
        y: 110
        width: 1122
        height: 756
        visible: true

        MapCentre {
            id: mapCentre
            x: 0
            y: 0
            visible: false
        }

        PlaneCentre {
            id: planeCentre
            x: 2
            y: 2
            visible: false
        }

        HomeCentre {
            id: homeCentre
            x: 0
            y: 2
            visible: false
        }

        RadioCentre {
            id: radioCentre
            x: 8
            y: 8
            visible: false
        }

        EngineCentre {
            id: engineCentre
            x: 8
            y: 8

            visible: false
        }
    }

    Lower_Bar {
        id: lower_Bar
        x: 0
        y: 942
        width: 1921
        height: 80
    }

    Upper_Bar {
        id: upper_Bar
        x: 0
        y: 0
    }

    Left_Side {
        id: left_Side
        x: 8
        y: 76
        width: 350
        height: 800
        velocity_valueText: "120"
    }

    Right_Side {
        id: right_Side
        x: 1562
        y: 76
    }

    Rectangle {
        id: rectangleMap
        x: 43
        y: 1014
        width: 200
        height: 3
        color: "#ffffff"
        visible: true
    }

    Rectangle {
        id: rectanglePlane
        x: 451
        y: 1014
        width: 200
        height: 3
        color: "#ffffff"
        visible: true
    }

    Rectangle {
        id: rectangleRadio
        x: 1266
        y: 1014
        width: 200
        height: 3
        color: "#ffffff"
        visible: true
    }

    Rectangle {
        id: rectangleEngine
        x: 1677
        y: 1014
        width: 200
        height: 3
        color: "#ffffff"
        visible: true
    }

    Rectangle {
        id: rectangleHome
        x: 860
        y: 1014
        width: 200
        height: 3
        color: "#ffffff"
        visible: true
    }

    states: [
        State {
            name: "homeState"

            PropertyChanges {
                target: rectangleMap
                visible: false
            }

            PropertyChanges {
                target: rectanglePlane
                visible: false
            }

            PropertyChanges {
                target: rectangleRadio
                visible: false
            }

            PropertyChanges {
                target: rectangleEngine
                visible: false
            }

            PropertyChanges {
                target: planeCentre
                visible: false
            }

            PropertyChanges {
                target: homeCentre
                visible: true
            }
        },
        State {
            name: "mapState"

            PropertyChanges {
                target: rectanglePlane
                visible: false
            }

            PropertyChanges {
                target: rectangleHome
                visible: false
            }

            PropertyChanges {
                target: rectangleRadio
                visible: false
            }

            PropertyChanges {
                target: rectangleEngine
                visible: false
            }

            PropertyChanges {
                target: planeCentre
                visible: false
            }

            PropertyChanges {
                target: homeCentre
                visible: false
            }

            PropertyChanges {
                target: mapCentre
                visible: true
            }

            PropertyChanges {
                target: engineCentre
                x: 10
                y: 21
            }
        },
        State {
            name: "planeState"

            PropertyChanges {
                target: rectangleRadio
                visible: false
            }

            PropertyChanges {
                target: rectangleHome
                visible: false
            }

            PropertyChanges {
                target: rectangleEngine
                visible: false
            }

            PropertyChanges {
                target: rectangleMap
                visible: false
            }

            PropertyChanges {
                target: planeCentre
                x: 8
                y: 9
                visible: true
                offNL2: true
                offSL2: true
            }

            PropertyChanges {
                target: homeCentre
                visible: false
            }
        },
        State {
            name: "radioState"

            PropertyChanges {
                target: rectangleMap
                visible: false
            }

            PropertyChanges {
                target: rectangleHome
                visible: false
            }

            PropertyChanges {
                target: rectanglePlane
                visible: false
            }

            PropertyChanges {
                target: rectangleEngine
                visible: false
            }

            PropertyChanges {
                target: radioCentre
                visible: true
            }
        },
        State {
            name: "engineState"

            PropertyChanges {
                target: rectangleRadio
                visible: false
            }

            PropertyChanges {
                target: rectangleHome
                visible: false
            }

            PropertyChanges {
                target: rectanglePlane
                visible: false
            }

            PropertyChanges {
                target: rectangleMap
                visible: false
            }

            PropertyChanges {
                target: engineCentre
                visible: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;active3dScene:"-1";formeditorZoom:0.33000001311302185}
}
##^##*/

