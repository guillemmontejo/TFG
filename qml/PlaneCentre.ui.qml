import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts 1.11

Item {
    width: 1122
    height: 756

    property alias offNL1: navLight1.off
    property alias offNL2: navLight2.off
    property alias offML3: navLight3.off
    property alias offRWL: redWhiteLight.off
    property alias offSL1: strobeLight1.off
    property alias offSL2: strobeLight2.off
    property alias offLL1: landingLight1.off
    property alias offLL2: landingLight1.off

    Exo {}

    Image {
        id: image
        x: 784
        y: 14
        width: 330
        height: 295
        fillMode: Image.PreserveAspectFit
        source: "images/silhouette.png"

        WhiteLight {
            id: navLight3
            x: 22
            y: 189
            width: 96
            height: 98
            off: true
            on: false
        }

        GreenLight {
            id: navLight2
            x: 239
            y: 182
            off: true
            on: false
        }

        RedWhiteLight {
            id: redWhiteLight
            x: 38
            y: 176
            off: true
            on: false
        }

        WhiteLight {
            id: strobeLight2
            x: 223
            y: 193
            width: 96
            height: 98
            off: true
            on: false
        }

        WhiteLight {
            id: strobeLight1
            x: 21
            y: -8
            width: 96
            height: 98
            off: true
            on: false
        }

        RedLight {
            id: navLight1
            x: 32
            y: -24
            width: 96
            height: 98
            off: true
            on: false
        }

        WhiteLight {
            id: landingLight1
            x: 105
            y: 32
            width: 96
            height: 98
            off: true
            on: false
        }

        WhiteLight {
            id: landingLight2
            x: 179
            y: 100
            width: 96
            height: 98
            off: true
            on: false
        }
    }

    Text {
        id: element
        x: 40
        y: 8
        width: 462
        height: 86
        color: "#ffffff"
        text: "Lights Configuration"
        font.family: "Exo 2"
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: 50
        font.letterSpacing: 0
        font.weight: Font.Thin
        verticalAlignment: Text.AlignTop
        font.bold: false
    }

    BorderItem {
        id: lightsBox
        x: 40
        y: 107
        width: 738
        height: 174
        strokeWidth: 1.5
        strokeColor: "#ffffff"

        Text {
            id: element4
            x: 140
            y: 97
            width: 230
            height: 42
            color: "#ffffff"
            text: "Landing Lights"
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 27
            font.letterSpacing: 0
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Thin
            font.bold: false
        }

        Text {
            id: element6
            x: 532
            y: 97
            width: 186
            height: 47
            color: "#ffffff"
            text: "Beacon Lights"
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 27
            font.letterSpacing: 0
            font.weight: Font.Thin
            verticalAlignment: Text.AlignVCenter
            font.bold: false
        }

        Text {
            id: element2
            x: 532
            y: 22
            width: 186
            height: 42
            color: "#ffffff"
            text: "Strobe Lights"
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 27
            font.letterSpacing: 0
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Thin
            font.bold: false
        }

        Text {
            id: element5
            x: 140
            y: 22
            width: 230
            height: 42
            color: "#ffffff"
            text: "Navigation Lights"
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 27
            font.letterSpacing: 0
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Thin
            font.bold: false
        }

        Button_OnOFf {
            id: navButton
            x: 22
            y: 22

            Connections {
                target: navButton
                onStateChanged: {
                    if (navLight1.off == true && navLight2.off == true
                            && navLight3.off == true) {
                        navLight1.off = false
                        navLight2.off = false
                        navLight3.off = false
                        navLight1.on = true
                        navLight2.on = true
                        navLight3.on = true
                    } else {
                        navLight1.off = true
                        navLight2.off = true
                        navLight3.off = true
                        navLight1.on = false
                        navLight2.on = false
                        navLight3.on = false
                    }
                }
            }
        }

        Button_OnOFf {
            id: lanButton
            x: 22
            y: 97

            Connections {
                target: lanButton
                onStateChanged: {
                    if (landingLight1.off == true
                            && landingLight2.off == true) {
                        landingLight1.off = false
                        landingLight2.off = false
                        landingLight1.on = true
                        landingLight2.on = true
                    } else {
                        landingLight1.off = true
                        landingLight2.off = true
                        landingLight1.on = false
                        landingLight2.on = false
                    }
                }
            }
        }

        Button_OnOFf {
            id: strobeButton
            x: 418
            y: 22

            Connections {
                target: strobeButton
                onStateChanged: {
                    if (strobeLight1.off == true && strobeLight2.off == true) {
                        strobeLight1.off = false
                        strobeLight2.off = false
                        strobeLight1.on = true
                        strobeLight2.on = true
                    } else {
                        strobeLight1.off = true
                        strobeLight2.off = true
                        strobeLight1.on = false
                        strobeLight2.on = false
                    }
                }
            }
        }

        Button_OnOFf {
            id: beaconButton
            x: 418
            y: 100

            Connections {
                target: beaconButton
                onStateChanged: {
                    if (redWhiteLight.off == true) {
                        redWhiteLight.off = false
                        redWhiteLight.on = true
                    } else {
                        redWhiteLight.off = true
                        redWhiteLight.on = false
                    }
                }
            }
        }

        RectangleItem {
            id: rectangle
            x: 384
            y: 18
            width: 1
            height: 130
            radius: 0
            strokeWidth: 1
            strokeColor: "#ffffff"
        }
    }

    Text {
        id: element3
        x: 40
        y: 377
        width: 410
        height: 86
        color: "#ffffff"
        text: "Flaps Configuration"
        font.family: "Exo 2"
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: 50
        font.letterSpacing: 0
        verticalAlignment: Text.AlignTop
        font.weight: Font.Thin
        font.bold: false
    }

    BorderItem {
        id: flapsBox
        x: 40
        y: 469
        width: 507
        height: 213
        strokeColor: "#ffffff"
        strokeWidth: 1.5

        MouseArea {
            id: upArea
            x: 8
            y: 8
            width: 168
            height: 73

            Image {
                id: image1
                x: 0
                y: 12
                width: 63
                height: 50
                fillMode: Image.PreserveAspectFit
                source: "images/flecha-arriba.png"
            }

            Text {
                id: element7
                x: 76
                y: 20
                width: 60
                height: 42
                color: "#ffffff"
                text: "UP"
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 27
                font.letterSpacing: 0
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Thin
                font.bold: false
            }

            Connections {
                target: upArea
                onClicked: {
                    if (flapsPosition.degrees10 == false
                            && flapsPosition.degrees20 == false
                            && flapsPosition.degrees30 == false
                            && flapsPosition.degrees40 == false) {

                    } else if (flapsPosition.degrees10 == true) {
                        flapsPosition.degrees10 = false
                        flapsDegrees.text = '0'
                    } else if (flapsPosition.degrees20 == true) {
                        flapsPosition.degrees20 = false
                        flapsPosition.degrees10 = true
                        flapsDegrees.text = '10'
                    } else if (flapsPosition.degrees30 == true) {
                        flapsPosition.degrees30 = false
                        flapsPosition.degrees20 = true
                        flapsDegrees.text = '20'
                    } else if (flapsPosition.degrees40 == true) {
                        flapsPosition.degrees40 = false
                        flapsPosition.degrees30 = true
                        flapsDegrees.text = '30'
                    }
                }
            }
        }

        MouseArea {
            id: downArea
            x: 8
            y: 122
            width: 168
            height: 73

            Image {
                id: image2
                x: 0
                y: 15
                width: 63
                height: 50
                fillMode: Image.PreserveAspectFit
                source: "images/flecha-abajo.png"
            }

            Text {
                id: element8
                x: 74
                y: 16
                width: 80
                height: 42
                color: "#ffffff"
                text: "DOWN"
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 27
                font.letterSpacing: 0
                font.weight: Font.Thin
                verticalAlignment: Text.AlignVCenter
                font.bold: false
            }

            Connections {
                target: downArea
                onClicked: {
                    if (flapsPosition.degrees10 == false
                            && flapsPosition.degrees20 == false
                            && flapsPosition.degrees30 == false
                            && flapsPosition.degrees40 == false) {
                        flapsPosition.degrees10 = true
                        flapsDegrees.text = '10'
                    } else if (flapsPosition.degrees10 == true) {
                        flapsPosition.degrees10 = false
                        flapsPosition.degrees20 = true
                        flapsDegrees.text = '20'
                    } else if (flapsPosition.degrees20 == true) {
                        flapsPosition.degrees20 = false
                        flapsPosition.degrees30 = true
                        flapsDegrees.text = '30'
                    } else if (flapsPosition.degrees30 == true) {
                        flapsPosition.degrees30 = false
                        flapsPosition.degrees40 = true
                        flapsDegrees.text = '40'
                    } else if (flapsPosition.degrees40 == true) {
                        flapsPosition.degrees40 = true
                        flapsDegrees.text = '40'
                    }
                }
            }
        }

        Text {
            id: element9
            x: 216
            y: 15
            width: 158
            height: 42
            color: "#ffffff"
            text: "Flaps position: "
            verticalAlignment: Text.AlignVCenter
            font.family: "Exo 2"
            font.pixelSize: 22
            font.letterSpacing: 0
            font.weight: Font.Thin
            font.bold: false
        }

        Text {
            id: flapsDegrees
            x: 371
            y: 15
            width: 24
            height: 42
            color: "#ffffff"
            text: "0"
            horizontalAlignment: Text.AlignHCenter
            font.family: "Exo 2"
            font.pixelSize: 22
            font.letterSpacing: 0
            font.weight: Font.Thin
            verticalAlignment: Text.AlignVCenter
            font.bold: false
        }

        Text {
            id: element10
            x: 410
            y: 15
            width: 96
            height: 42
            color: "#ffffff"
            text: "degrees"
            font.family: "Exo 2"
            font.pixelSize: 22
            font.letterSpacing: 0
            font.weight: Font.Thin
            verticalAlignment: Text.AlignVCenter
            font.bold: false
        }

        FlapsPosition {
            id: flapsPosition
            x: 198
            y: 87
        }
    }

    Text {
        id: element11
        x: 632
        y: 377
        width: 410
        height: 86
        color: "#ffffff"
        text: "Trim Configuration"
        font.weight: Font.Thin
        horizontalAlignment: Text.AlignLeft
        font.bold: false
        font.family: "Exo 2"
        font.letterSpacing: 0
        font.pixelSize: 50
        verticalAlignment: Text.AlignTop
    }

    BorderItem {
        id: trimBox
        x: 693
        y: 469
        width: 288
        height: 213
        strokeWidth: 1.5
        strokeColor: "#ffffff"

        RectangleItem {
            id: rectangle1
            x: 112
            y: 23
            width: 272
            height: 198
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#020202"

            ArcItem {
                id: arc
                x: 28
                y: 8
                width: 184
                height: 184
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                end: 360
                strokeColor: "#d6d3d3"
                fillColor: "#00000000"
            }

            ArcItem {
                id: arc1
                x: 28
                y: 5
                width: 160
                height: 160
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                fillColor: "#00000000"
                end: 360
                strokeColor: "#d6d3d3"
            }

            ArcItem {
                id: arc2
                x: 23
                y: 9
                width: 130
                height: 130
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                end: 360
                fillColor: "#00000000"
                strokeColor: "#d6d3d3"
            }

            ArcItem {
                id: arc3
                x: 17
                y: 14
                width: 100
                height: 100
                anchors.verticalCenter: parent.verticalCenter
                strokeColor: "#d6d3d3"
                anchors.horizontalCenter: parent.horizontalCenter
                end: 360
                fillColor: "#00000000"
            }

            ArcItem {
                id: arc4
                x: 8
                y: 7
                width: 70
                height: 70
                anchors.verticalCenter: parent.verticalCenter
                strokeColor: "#d6d3d3"
                anchors.horizontalCenter: parent.horizontalCenter
                end: 360
                fillColor: "#00000000"
            }

            RectangleItem {
                id: rectangle2
                x: 103
                width: 1
                radius: 0
                anchors.top: parent.top
                anchors.topMargin: 4
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                strokeWidth: 1
                fillColor: "#d6d3d3"
                strokeColor: "#d6d3d3"
            }

            RectangleItem {
                id: rectangle3
                y: 106
                width: 150
                height: 1
                radius: 0
                anchors.left: parent.left
                anchors.leftMargin: 4
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                strokeWidth: 1
                fillColor: "#d6d3d3"
                strokeColor: "#d6d3d3"
            }

            ArcItem {
                id: positioner
                x: 111
                y: 74
                width: 50
                height: 50
                strokeWidth: 3
                end: 360
                strokeColor: "#f32f2f"
                fillColor: "#00000000"

                Image {
                    id: trimPosition_img
                    x: 5
                    y: 5
                    width: 40
                    height: 40
                    source: "images/objetivo.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            MouseArea {
                id: clickTrim_Right
                x: 195
                y: 37
                width: 73
                height: 144
                anchors.verticalCenter: parent.verticalCenter

                Connections {
                    target: clickTrim_Right
                    onClicked: {
                        if (positioner.x <= 178 && positioner.x >= 40) {
                            positioner.x = positioner.x + 10
                        }
                    }
                }
            }

            MouseArea {
                id: clickTrim_Left
                x: 0
                y: 37
                width: 78
                height: 144
                anchors.verticalCenter: parent.verticalCenter

                Connections {
                    target: clickTrim_Left
                    onClicked: {
                        if (positioner.x <= 190 && positioner.x >= 50) {
                            positioner.x = positioner.x - 10
                        }
                    }
                }
            }

            MouseArea {
                id: clickTrim_Down
                x: 69
                y: 116
                width: 134
                height: 78
                anchors.horizontalCenter: parent.horizontalCenter

                Connections {
                    target: clickTrim_Down
                    onClicked: {
                        if (positioner.y <= 134 && positioner.y >= 3) {
                            positioner.y = positioner.y + 10
                        }
                    }
                }
            }

            MouseArea {
                id: clickTrim_Up
                x: 69
                y: 4
                width: 134
                height: 82
                anchors.horizontalCenter: parent.horizontalCenter

                Connections {
                    target: clickTrim_Up
                    onClicked: {
                        if (positioner.y <= 144 && positioner.y >= 5) {
                            positioner.y = positioner.y - 10
                        }
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:756;width:1122}D{i:48}D{i:49}
}
##^##*/

