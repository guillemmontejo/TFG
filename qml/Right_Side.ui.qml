import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0

Item {
    id: element
    width: 350
    height: 800

    //Altitude properties
    property alias arc_altitudeEnd: arc_altitude.end
    property alias rotate_altitudeRotation: rotate_altitude.rotation
    property alias altitude_valueText: altitude_value.text

    //Vertical speed properties
    property alias arc_verticalSpeedEnd: arc_verticalSpeed.end
    property alias rotate_vspeedRotation: rotate_vspeed.rotation
    property alias verticalSpeed_valueText: verticalSpeed_value.text

    //Compass properties
    property alias rotationCompassRotation: rotationCompass.rotation
    property alias headingLblText: headingLbl.text

    Exo {}

    Rectangle {
        id: rectangle
        x: -13
        width: 3
        height: 700
        color: "#ffffff"
        anchors.top: parent.top
        anchors.topMargin: 50
    }

    Image {
        id: altimeter
        x: 56
        y: 33
        width: 236
        height: 203
        ArcItem {
            id: arc_altitude
            x: 20
            y: 5
            width: 201
            height: 198
            anchors.horizontalCenter: parent.horizontalCenter
            begin: -150
            strokeWidth: 20
            strokeColor: "#4ef3f3"
            end: 1
            fillColor: "#00230000"
        }

        ArcItem {
            id: arc_altitude1
            x: 20
            y: 33
            width: 138
            height: 138
            anchors.horizontalCenterOffset: 0
            strokeColor: "#4ef3f3"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 5
            end: 150
            fillColor: "#00230000"
            begin: -150
        }

        Item {
            id: rotate_altitude
            x: 68
            y: 52
            width: 100
            height: 100
            Image {
                id: needle_altitude
                x: 30
                y: -40
                width: 40
                height: 30
                rotation: 60.48
                source: "assets/rpm_needle_195_65.png"
                fillMode: Image.PreserveAspectFit
            }
            rotation: 0
        }

        Image {
            id: altimeter_marker
            x: 40
            y: 37
            width: 157
            height: 130
            source: "images/speed_dial.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: altitude_value
            x: 78
            y: 53
            width: 82
            height: 46
            color: "#ffffff"
            text: qsTr("3000")
            font.weight: Font.Thin
            font.family: "Exo 2"
            font.pixelSize: 39
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: ft_lbl
            x: 94
            y: 137
            width: 51
            height: 20
            color: "#ffffff"
            text: qsTr("ft")
            font.weight: Font.Thin
            font.family: "Exo 2"
            font.pixelSize: 19
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: lblalt
            x: 94
            y: 111
            width: 51
            height: 20
            color: "#ffffff"
            text: qsTr("ALTITUDE")
            font.weight: Font.Thin
            font.family: "Exo 2"
            font.pixelSize: 19
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
        }

        source: "assets/sppedometer_outer_ring_195_86.png"
        fillMode: Image.PreserveAspectFit
    }

    ArcItem {
        id: verticalSpeed
        x: 66
        y: 278
        width: 218
        height: 217
        capStyle: 0
        antialiasing: false
        strokeStyle: 3
        end: 360
        strokeWidth: 2
        strokeColor: "#ffffff"
        fillColor: "#00230000"

        ArcItem {
            id: arc_verticalSpeed
            x: 12
            y: 12
            width: 195
            height: 194
            anchors.horizontalCenter: parent.horizontalCenter
            begin: -90
            strokeColor: "#8e92ea"
            end: -72
            fillColor: "#00230000"
            strokeWidth: 20
        }

        ArcItem {
            id: arc_verticalSpeed1
            x: 13
            y: 40
            width: 138
            height: 138
            anchors.horizontalCenterOffset: 0
            strokeColor: "#8e92ea"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 5
            end: 360
            fillColor: "#00230000"
            begin: 0
        }

        Item {
            id: rotate_vspeed
            x: 59
            y: 59
            width: 100
            height: 100
            Image {
                id: needle_vspeed
                x: 30
                y: -40
                width: 40
                height: 30
                source: "assets/rpm_needle_195_65.png"
                rotation: 60.48
                fillMode: Image.PreserveAspectFit
            }
            rotation: -72
        }

        Image {
            id: vspeed_marker
            x: 31
            y: 44
            width: 157
            height: 130
            source: "images/speed_dial.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: verticalSpeed_value
            x: 75
            y: 62
            width: 48
            height: 46
            color: "#ffffff"
            text: qsTr("2")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 39
            font.family: "Exo 2"
            font.weight: Font.Thin
        }

        Text {
            id: up_lbl
            x: 115
            y: 73
            width: 35
            height: 17
            color: "#ffffff"
            text: qsTr("UP")
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
            font.family: "Exo 2"
            font.weight: Font.Thin
        }

        Text {
            id: down_lbl
            x: 123
            y: 91
            width: 35
            height: 17
            color: "#ffffff"
            text: qsTr("DOWN")
            opacity: 0.161
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
            font.family: "Exo 2"
            font.weight: Font.Thin
        }

        Text {
            id: lblVS
            x: 84
            y: 114
            width: 51
            height: 20
            color: "#ffffff"
            text: qsTr("VERTICAL")
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 15
            font.family: "Exo 2"
            font.weight: Font.Thin
        }

        Text {
            id: ft_lbl1
            x: 84
            y: 148
            width: 51
            height: 20
            color: "#ffffff"
            text: qsTr("x 100 ft/min")
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 11
            font.family: "Exo 2"
            font.weight: Font.Thin
        }

        Text {
            id: lblVS1
            x: 84
            y: 128
            width: 51
            height: 20
            color: "#ffffff"
            text: qsTr("SPEED")
            textFormat: Text.AutoText
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 15
            font.family: "Exo 2"
            font.weight: Font.Thin
        }

        Text {
            id: element1
            x: 8
            y: 0
            width: 12
            height: 16
            color: "#ffffff"
            text: qsTr("5")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: "Exo 2"
            font.pixelSize: 19
        }

        Text {
            id: element8
            x: 8
            y: 194
            width: 11
            height: 16
            color: "#ffffff"
            text: qsTr("5")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 19
            font.family: "Exo 2"
        }

        Text {
            id: element7
            x: 103
            y: 223
            width: 12
            height: 16
            color: "#ffffff"
            text: qsTr("10")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 19
            font.family: "Exo 2"
        }

        Text {
            id: element6
            x: 196
            y: 194
            width: 12
            height: 16
            color: "#ffffff"
            text: qsTr("15")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 19
            font.family: "Exo 2"
        }

        Text {
            id: element5
            x: 230
            y: 99
            width: 12
            height: 16
            color: "#ffffff"
            text: qsTr("20")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 19
            font.family: "Exo 2"
        }

        Text {
            id: element4
            x: 196
            y: 0
            width: 12
            height: 16
            color: "#ffffff"
            text: qsTr("15")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 19
            font.family: "Exo 2"
        }

        Image {
            id: image
            x: 39
            y: 87
            width: 30
            height: 47
            source: "images/flecha-doble.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: element3
            x: 103
            y: -22
            width: 12
            height: 16
            color: "#ffffff"
            text: qsTr("10")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 19
            font.family: "Exo 2"
        }

        Text {
            id: element2
            x: -24
            y: 99
            width: 12
            height: 16
            color: "#ffffff"
            text: qsTr("0")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 19
            font.family: "Exo 2"
        }
    }

    ArcItem {
        id: compass
        x: 66
        y: 556
        width: 218
        height: 217
        capStyle: 0
        antialiasing: false
        end: 360
        strokeWidth: 2
        strokeColor: "#ffffff"
        strokeStyle: 1
        fillColor: "#00230000"

        TriangleItem {
            id: triangle
            x: 102
            y: 38
            width: 13
            height: 34
            radius: 1
        }

        Image {
            id: plane
            x: 54
            y: 45
            width: 109
            height: 128
            fillMode: Image.PreserveAspectFit
            source: "images/avionbrujula.png"

            Text {
                id: headingLbl
                x: 41
                y: 51
                width: 28
                height: 18
                color: "#020202"
                text: qsTr("359")
                font.family: "Exo 2"
                font.pixelSize: 19
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Item {
            id: rotationCompass
            x: 9
            y: 0
            width: 201
            height: 209
            rotation: 0

            Image {
                id: rotationImage
                x: -12
                y: 7
                width: 223
                height: 203
                rotation: 0
                fillMode: Image.PreserveAspectFit
                source: "images/compass.png"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:800;width:350}
}
##^##*/

