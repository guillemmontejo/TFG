import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts 1.11

Item {
    width: 1122
    height: 756

    //Battery properties
    property alias amp_valueText: amp_value.text
    property alias voltage_valueText: voltage_value.text

    //Coolant properties
    property alias coolantBarCoolantMarkerX: coolantBar.coolantMarkerX
    property alias coolant_valueText: coolant_value.text

    //Fuel level properties
    property alias fuelLevelRightWidth: fuelLevelRight.width
    property alias fuelLevelLeftWidth: fuelLevelLeft.width

    //Fuel flow properties
    property alias rotate_fuelflowRotation: rotate_fuelflow.rotation
    property alias arc_fuelflowEnd: arc_fuelflow.end
    property alias fuelflow_valueText: fuelflow_value.text

    //Fuel pressure properties
    property alias rotate_fuelpressRotation: rotate_fuelpress.rotation
    property alias arc_fuelpressEnd: arc_fuelpress.end
    property alias arc_fuelpressStrokeColor: arc_fuelpress.strokeColor
    property alias fuelpress_valueText: fuelpress_value.text

    //CHT properties
    property alias rotate_chtRotation: rotate_cht.rotation
    property alias arc_chtEnd: arc_cht.end
    property alias arc_chtStrokeColor: arc_cht.strokeColor
    property alias cht_valueText: cht_value.text

    //EGT properties
    property alias rotate_egtRotation: rotate_egt.rotation
    property alias arc_egtEnd: arc_egt.end
    property alias arc_egtStrokeColor: arc_egt.strokeColor
    property alias egt_valueText: egt_value.text

    //Oil pressure properties
    property alias rotate_oilpressRotation: rotate_oilpress.rotation
    property alias arc_oilpressEnd: arc_oilpress.end
    property alias arc_oilpressStrokeColor: arc_oilpress.strokeColor
    property alias oilpress_valueText: oilpress_value.text

    //Oil temperature properties
    property alias rotate_oiltempRotation: rotate_oiltemp.rotation
    property alias arc_oiltempStrokeColor: arc_oiltemp.strokeColor
    property alias arc_oiltempEnd: arc_oiltemp.end
    property alias oiltemp_valueText: oiltemp_value.text

    //Manifold properties
    property alias rotate_manifoldRotation: rotate_manifold.rotation
    property alias arc_manifoldEnd: arc_manifold.end
    property alias manifold_valueText: manifold_value.text

    //RPM properties
    property alias arc_rpmStrokeColor: arc_rpm.strokeColor
    property alias arc_rpmEnd: arc_rpm.end
    property alias rotate_rpmRotation: rotate_rpm.rotation
    property alias rpm_valueText: rpm_value.text

    Exo {}

    Text {
        id: title
        x: 40
        y: 8
        width: 488
        height: 86
        color: "#ffffff"
        text: "Engine Performances"
        verticalAlignment: Text.AlignTop
        font.pixelSize: 50
        font.letterSpacing: 0
        font.family: "Exo 2"
        font.bold: false
        horizontalAlignment: Text.AlignLeft
        font.weight: Font.Thin
    }

    BorderItem {
        id: principalBox
        x: 40
        y: 100
        width: 506
        height: 186
        strokeColor: "#ffffff"
        strokeWidth: 1.5

        Image {
            id: manifold
            x: 305
            y: 15
            width: 193
            height: 161
            anchors.verticalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            source: "assets/sppedometer_outer_ring_195_86.png"
            fillMode: Image.PreserveAspectFit
            ArcItem {
                id: arc_manifold
                x: 20
                y: 8
                width: 157
                height: 154
                anchors.verticalCenter: manifold_marker.verticalCenter
                strokeColor: "#fae779"
                anchors.horizontalCenter: parent.horizontalCenter
                strokeWidth: 12
                antialiasing: true
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: -2
                end: 61
                fillColor: "#00230000"
                begin: -150
            }

            ArcItem {
                id: arc_manifold1
                x: 11
                y: 206
                width: 109
                height: 109
                anchors.verticalCenter: manifold_marker.verticalCenter
                strokeColor: "#fae779"
                anchors.horizontalCenter: parent.horizontalCenter
                strokeWidth: 4
                antialiasing: true
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: 0
                end: 150
                fillColor: "#00230000"
                begin: -150
            }

            Item {
                id: rotate_manifold
                x: 43
                y: 34
                width: 106
                height: 103
                Image {
                    id: needle_manifold
                    x: 32
                    y: -20
                    width: 40
                    height: 30
                    source: "assets/rpm_needle_195_65.png"
                    fillMode: Image.PreserveAspectFit
                    rotation: 60.48
                }
                rotation: 62
            }

            Image {
                id: manifold_marker
                x: 32
                y: 34
                width: 106
                height: 103
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/speed_dial.png"
                fillMode: Image.PreserveAspectFit
                visible: true
            }

            Text {
                id: manifold_value
                x: 56
                y: 51
                width: 82
                height: 35
                color: "#ffffff"
                text: qsTr("29")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 30
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                style: Text.Normal
                visible: true
            }

            Text {
                id: manifold_lbl
                x: 56
                y: 88
                width: 82
                height: 22
                color: "#ffffff"
                text: qsTr("MANIFOLD")
                font.pixelSize: 12
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                renderType: Text.NativeRendering
                visible: true
            }

            Text {
                id: manifold_lbl1
                x: 56
                y: 104
                width: 82
                height: 19
                color: "#ffffff"
                text: "In Hg"
                font.pixelSize: 12
                font.family: "Exo 2"
                textFormat: Text.AutoText
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                renderType: Text.NativeRendering
            }
        }

        Image {
            id: rpm
            x: 8
            y: 15
            width: 193
            height: 161
            anchors.verticalCenter: parent.verticalCenter
            source: "assets/sppedometer_outer_ring_195_86.png"
            fillMode: Image.PreserveAspectFit

            ArcItem {
                id: arc_rpm
                x: 20
                y: 8
                width: 157
                height: 154
                antialiasing: true
                anchors.verticalCenterOffset: -2
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: rpm_marker.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                strokeColor: "#78ed74"
                strokeWidth: 12
                end: -64
                fillColor: "#00230000"
                begin: -150
            }

            Rpm_colorDialSmall {
                id: rpm_colorDialSmall
                x: 33
                y: 27
                width: 120
                height: 118
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Item {
                id: rotate_rpm
                x: 43
                y: 34
                width: 106
                height: 103
                Image {
                    id: needle_rpm
                    x: 32
                    y: -20
                    width: 40
                    height: 30
                    source: "assets/rpm_needle_195_65.png"
                    fillMode: Image.PreserveAspectFit
                    rotation: 60.48
                }
                rotation: -63
            }

            Image {
                id: rpm_marker
                x: 32
                y: 35
                width: 106
                height: 103
                visible: true
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/speed_dial.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: rpm_value
                x: 56
                y: 51
                width: 82
                height: 35
                color: "#ffffff"
                text: qsTr("2039")
                visible: true
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 30
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                style: Text.Normal
                font.weight: Font.Thin
            }

            Text {
                id: rpm_lbl
                x: 56
                y: 97
                width: 82
                height: 22
                color: "#ffffff"
                text: qsTr("RPM x 1000")
                visible: true
                font.pixelSize: 12
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                renderType: Text.NativeRendering
            }
        }
    }

    BorderItem {
        id: oilBox
        x: 573
        y: 100
        width: 488
        height: 186
        strokeColor: "#ffffff"
        strokeWidth: 1.5

        Image {
            id: oiltemperature
            x: 8
            y: 12
            width: 193
            height: 161
            anchors.verticalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            source: "assets/sppedometer_outer_ring_195_86.png"
            fillMode: Image.PreserveAspectFit
            ArcItem {
                id: arc_oiltemp
                x: 20
                y: 8
                width: 157
                height: 154
                anchors.verticalCenter: oiltemp_marker.verticalCenter
                strokeColor: "#78ed74"
                anchors.horizontalCenter: parent.horizontalCenter
                strokeWidth: 12
                antialiasing: true
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: -2
                end: -64
                fillColor: "#00230000"
                begin: -150
            }

            OilTemp_colorDial {
                id: oilTemp_colorDial
                x: 37
                y: 26
            }

            Item {
                id: rotate_oiltemp
                x: 43
                y: 34
                width: 106
                height: 103
                Image {
                    id: needle_rpm1
                    x: 32
                    y: -20
                    width: 40
                    height: 30
                    source: "assets/rpm_needle_195_65.png"
                    fillMode: Image.PreserveAspectFit
                    rotation: 60.48
                }
                rotation: -63
            }

            Image {
                id: oiltemp_marker
                x: 32
                y: 35
                width: 106
                height: 103
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/speed_dial.png"
                fillMode: Image.PreserveAspectFit
                visible: true
            }

            Text {
                id: oiltemp_value
                x: 56
                y: 51
                width: 82
                height: 35
                color: "#ffffff"
                text: qsTr("94")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 30
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                style: Text.Normal
                visible: true
            }

            Text {
                id: oiltemp_lbl
                x: 56
                y: 92
                width: 82
                height: 16
                color: "#ffffff"
                text: qsTr("TEMPERATURE")
                font.pixelSize: 12
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                renderType: Text.NativeRendering
                visible: true
            }

            Text {
                id: oiltemp_lbl1
                x: 56
                y: 105
                width: 82
                height: 16
                color: "#ffffff"
                text: qsTr("ºC")
                font.pixelSize: 12
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                visible: true
                renderType: Text.NativeRendering
            }
        }

        Image {
            id: oilpressure
            x: 287
            y: 12
            width: 193
            height: 161
            anchors.verticalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            source: "assets/sppedometer_outer_ring_195_86.png"
            fillMode: Image.PreserveAspectFit
            ArcItem {
                id: arc_oilpress
                x: 20
                y: 8
                width: 157
                height: 154
                anchors.verticalCenter: oilpress_marker.verticalCenter
                strokeColor: "#78ed74"
                anchors.horizontalCenter: parent.horizontalCenter
                strokeWidth: 12
                antialiasing: true
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: -2
                end: -64
                fillColor: "#00230000"
                begin: -150
            }

            Oilpress_colorDial {
                id: oilpress_colorDial
                x: 37
                y: 26
            }

            Item {
                id: rotate_oilpress
                x: 43
                y: 34
                width: 106
                height: 103
                Image {
                    id: needle_rpm2
                    x: 32
                    y: -20
                    width: 40
                    height: 30
                    source: "assets/rpm_needle_195_65.png"
                    fillMode: Image.PreserveAspectFit
                    rotation: 60.48
                }
                rotation: -63
            }

            Image {
                id: oilpress_marker
                x: 32
                y: 35
                width: 106
                height: 103
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/speed_dial.png"
                fillMode: Image.PreserveAspectFit
                visible: true
            }

            Text {
                id: oilpress_value
                x: 56
                y: 51
                width: 82
                height: 35
                color: "#ffffff"
                text: qsTr("2.3")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 30
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                style: Text.Normal
                visible: true
            }

            Text {
                id: oilpress_lbl
                x: 56
                y: 92
                width: 82
                height: 16
                color: "#ffffff"
                text: qsTr("PRESSURE")
                font.pixelSize: 12
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                renderType: Text.NativeRendering
                visible: true
            }

            Text {
                id: oilpress_lbl1
                x: 56
                y: 106
                width: 82
                height: 16
                color: "#ffffff"
                text: qsTr("bar")
                font.pixelSize: 12
                font.family: "Exo 2"
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
                visible: true
                renderType: Text.NativeRendering
            }
        }

        Image {
            id: image
            x: 213
            y: 65
            width: 63
            height: 55
            source: "images/car-oil.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    BorderItem {
        id: fuelBox
        x: 573
        y: 303
        width: 488
        height: 308
        Image {
            id: fuelpressure
            x: 14
            y: 12
            width: 193
            height: 161
            ArcItem {
                id: arc_fuelpress
                x: 20
                y: 8
                width: 157
                height: 154
                fillColor: "#00230000"
                anchors.verticalCenterOffset: -2
                antialiasing: true
                anchors.verticalCenter: fuelpress_marker.verticalCenter
                strokeColor: "#78ed74"
                strokeWidth: 12
                end: -64
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
                begin: -150
            }

            Fuelpress_colorDial {
                id: fuelpress_colorDial
                x: 37
                y: 26
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Item {
                id: rotate_fuelpress
                x: 43
                y: 34
                width: 106
                height: 103
                Image {
                    id: needle_fuelpress
                    x: 32
                    y: -20
                    width: 40
                    height: 30
                    fillMode: Image.PreserveAspectFit
                    source: "assets/rpm_needle_195_65.png"
                    rotation: 60.48
                }
                rotation: -63
            }

            Image {
                id: fuelpress_marker
                x: 32
                y: 35
                width: 106
                height: 103
                fillMode: Image.PreserveAspectFit
                source: "images/speed_dial.png"
                anchors.horizontalCenter: parent.horizontalCenter
                visible: true
            }

            Text {
                id: fuelpress_value
                x: 56
                y: 51
                width: 82
                height: 35
                color: "#ffffff"
                text: qsTr("1.7")
                verticalAlignment: Text.AlignVCenter
                style: Text.Normal
                font.weight: Font.Thin
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
                font.family: "Exo 2"
                visible: true
            }

            Text {
                id: fuelpress_lbl1
                x: 56
                y: 92
                width: 82
                height: 16
                color: "#ffffff"
                text: qsTr("FUEL PRESSURE")
                renderType: Text.NativeRendering
                font.weight: Font.Thin
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                font.family: "Exo 2"
                visible: true
            }

            Text {
                id: fuelpress_lbl2
                x: 56
                y: 105
                width: 82
                height: 16
                color: "#ffffff"
                text: qsTr("x 0.1 bar")
                renderType: Text.NativeRendering
                font.weight: Font.Thin
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                font.family: "Exo 2"
                visible: true
            }

            fillMode: Image.PreserveAspectFit
            source: "assets/sppedometer_outer_ring_195_86.png"
        }

        Image {
            id: fuelflow
            x: 287
            y: 12
            width: 193
            height: 161
            ArcItem {
                id: arc_fuelflow
                x: 20
                y: 8
                width: 157
                height: 154
                fillColor: "#00230000"
                anchors.verticalCenterOffset: -2
                antialiasing: true
                anchors.verticalCenter: fuelflow_marker.verticalCenter
                strokeColor: "#f8ae61"
                strokeWidth: 12
                end: -64
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
                begin: -150
            }

            ArcItem {
                id: arc_manifold2
                x: -98
                y: 32
                width: 109
                height: 109
                fillColor: "#00230000"
                anchors.verticalCenterOffset: 0
                antialiasing: true
                anchors.verticalCenter: manifold_marker.verticalCenter
                strokeColor: "#f8ae61"
                strokeWidth: 4
                end: 150
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
                begin: -150
            }

            Item {
                id: rotate_fuelflow
                x: 43
                y: 34
                width: 106
                height: 103
                Image {
                    id: needle_rpm4
                    x: 32
                    y: -20
                    width: 40
                    height: 30
                    fillMode: Image.PreserveAspectFit
                    source: "assets/rpm_needle_195_65.png"
                    rotation: 60.48
                }
                rotation: -63
            }

            Image {
                id: fuelflow_marker
                x: 32
                y: 35
                width: 106
                height: 103
                fillMode: Image.PreserveAspectFit
                source: "images/speed_dial.png"
                anchors.horizontalCenter: parent.horizontalCenter
                visible: true
            }

            Text {
                id: fuelflow_value
                x: 56
                y: 51
                width: 82
                height: 35
                color: "#ffffff"
                text: qsTr("23")
                verticalAlignment: Text.AlignVCenter
                style: Text.Normal
                font.weight: Font.Thin
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
                font.family: "Exo 2"
                visible: true
            }

            Text {
                id: fuelflow_lbl
                x: 56
                y: 92
                width: 82
                height: 16
                color: "#ffffff"
                text: qsTr("FUEL FLOW")
                renderType: Text.NativeRendering
                font.weight: Font.Thin
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                font.family: "Exo 2"
                visible: true
            }

            Text {
                id: fuelflow_lbl1
                x: 56
                y: 106
                width: 82
                height: 16
                color: "#ffffff"
                text: qsTr("gal/h")
                renderType: Text.NativeRendering
                font.weight: Font.Thin
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                font.family: "Exo 2"
                visible: true
            }

            fillMode: Image.PreserveAspectFit
            source: "assets/sppedometer_outer_ring_195_86.png"
        }

        Image {
            id: image1
            x: 213
            y: 176
            width: 63
            height: 55
            anchors.verticalCenterOffset: 29
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: "images/gasolinera.png"
        }

        BorderItem {
            id: fuelContainer1
            x: 32
            y: 271
            width: 157
            height: 18
            strokeWidth: 2
            strokeColor: "#ffffff"

            RectangleItem {
                id: fuelLevelLeft
                y: 6
                width: 140
                height: 8
                radius: 5
                anchors.verticalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 9
                strokeWidth: 0
                strokeColor: "#ffffff"
            }

            Text {
                id: fuelLevel_lbl
                x: 55
                y: -26
                width: 50
                height: 16
                color: "#ffffff"
                text: qsTr("LEFT")
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                renderType: Text.NativeRendering
                font.weight: Font.Thin
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                font.family: "Exo 2"
                visible: true
            }
        }

        BorderItem {
            id: fuelContainer2
            x: 305
            y: 271
            width: 157
            height: 18
            RectangleItem {
                id: fuelLevelRight
                y: 6
                width: 140
                height: 8
                radius: 5
                anchors.verticalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 9
                strokeColor: "#ffffff"
                strokeWidth: 0
            }

            Text {
                id: fuelLevel_lbl2
                x: 54
                y: -26
                width: 50
                height: 16
                color: "#ffffff"
                text: qsTr("RIGHT")
                renderType: Text.NativeRendering
                font.weight: Font.Thin
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                font.family: "Exo 2"
                visible: true
            }
            strokeColor: "#ffffff"
            strokeWidth: 2
        }

        strokeColor: "#ffffff"
        strokeWidth: 0
    }

    BorderItem {
        id: batteryBox
        x: 573
        y: 626
        width: 488
        height: 104
        strokeColor: "#ffffff"
        strokeWidth: 1.5

        Image {
            id: image2
            x: 203
            y: 23
            width: 83
            height: 58
            fillMode: Image.PreserveAspectFit
            source: "images/bateria.png"
        }

        Text {
            id: voltage_value
            x: 8
            y: 23
            width: 113
            height: 50
            color: "#ffffff"
            text: qsTr("12.3")
            font.pixelSize: 39
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: voltage_lbl
            x: 127
            y: 23
            width: 40
            height: 50
            color: "#ffffff"
            text: qsTr("V")
            font.pixelSize: 39
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: amp_value
            x: 321
            y: 23
            width: 113
            height: 50
            color: "#ffffff"
            text: qsTr("15")
            font.pixelSize: 39
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: amp_lbl
            x: 440
            y: 23
            width: 40
            height: 50
            color: "#ffffff"
            text: qsTr("A")
            font.pixelSize: 39
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }
    }

    BorderItem {
        id: coolantBox
        x: 40
        y: 626
        width: 506
        height: 104
        strokeColor: "#ffffff"
        strokeWidth: 1.5

        CoolantBar {
            id: coolantBar
            x: 200
            y: 27
        }

        Image {
            id: image3
            x: 26
            y: 14
            width: 56
            height: 76
            fillMode: Image.PreserveAspectFit
            source: "images/refrigerante-del-motor.png"
        }

        Text {
            id: coolant_value
            x: 90
            y: 27
            width: 74
            height: 50
            color: "#ffffff"
            text: qsTr("91")
            font.pixelSize: 31
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: coolant_lbl
            x: 162
            y: 27
            width: 40
            height: 50
            color: "#ffffff"
            text: qsTr("ºC")
            font.pixelSize: 31
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }
    }

    Image {
        id: egt
        x: 40
        y: 372
        width: 193
        height: 161
        anchors.verticalCenterOffset: 80
        fillMode: Image.PreserveAspectFit
        anchors.verticalCenter: parent.verticalCenter

        ArcItem {
            id: arc_egt
            x: 20
            y: 8
            width: 157
            height: 154
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenterOffset: -2
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenter: egt_marker.verticalCenter
            strokeColor: "#f9f629"
            fillColor: "#00230000"
            begin: -150
            antialiasing: true
            strokeWidth: 12
            end: -64
        }

        Egt_colorDial {
            id: egt_colorDial
            x: 36
            y: 26
        }

        Item {
            id: rotate_egt
            x: 43
            y: 34
            width: 106
            height: 103
            Image {
                id: needle_rpm3
                x: 32
                y: -20
                width: 40
                height: 30
                fillMode: Image.PreserveAspectFit
                source: "assets/rpm_needle_195_65.png"
                rotation: 60.48
            }
            rotation: -63
        }

        Image {
            id: egt_marker
            x: 32
            y: 35
            width: 106
            height: 103
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/speed_dial.png"
            visible: true
        }

        Text {
            id: egt_value
            x: 56
            y: 51
            width: 82
            height: 35
            color: "#ffffff"
            text: qsTr("578")
            font.pixelSize: 30
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: egt_lbl1
            x: 56
            y: 97
            width: 82
            height: 22
            color: "#ffffff"
            text: qsTr("ºC")
            font.pixelSize: 18
            font.family: "Exo 2"
            font.weight: Font.Thin
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
            visible: true
        }

        Text {
            id: egt_lbl
            x: 59
            y: -55
            width: 74
            height: 50
            color: "#ffffff"
            text: qsTr("EGT")
            font.pixelSize: 31
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }

        source: "assets/sppedometer_outer_ring_195_86.png"
    }
    Image {
        id: cht
        x: 323
        y: 372
        width: 193
        height: 161
        fillMode: Image.PreserveAspectFit
        anchors.verticalCenterOffset: 80
        anchors.verticalCenter: parent.verticalCenter
        ArcItem {
            id: arc_cht
            x: 20
            y: 8
            width: 157
            height: 154
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: -2
            anchors.verticalCenter: cht_marker.verticalCenter
            strokeColor: "#78ed74"
            begin: -150
            fillColor: "#00230000"
            end: -64
            strokeWidth: 12
            antialiasing: true
        }

        Cht_colorDial {
            id: cht_colorDial
            x: 37
            y: 26
        }

        Item {
            id: rotate_cht
            x: 43
            y: 34
            width: 106
            height: 103
            Image {
                id: needle_rpm5
                x: 32
                y: -20
                width: 40
                height: 30
                fillMode: Image.PreserveAspectFit
                source: "assets/rpm_needle_195_65.png"
                rotation: 60.48
            }
            rotation: -63
        }

        Image {
            id: cht_marker
            x: 32
            y: 35
            width: 106
            height: 103
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/speed_dial.png"
            visible: true
        }

        Text {
            id: cht_value
            x: 56
            y: 51
            width: 82
            height: 35
            color: "#ffffff"
            text: qsTr("190")
            font.pixelSize: 30
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: cht_lbl2
            x: 56
            y: 97
            width: 82
            height: 22
            color: "#ffffff"
            text: qsTr("ºC")
            font.pixelSize: 18
            font.family: "Exo 2"
            font.weight: Font.Thin
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
            visible: true
        }

        Text {
            id: cht_lbl
            x: 64
            y: -48
            width: 74
            height: 50
            color: "#ffffff"
            text: qsTr("CHT")
            font.pixelSize: 31
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            visible: true
            verticalAlignment: Text.AlignVCenter
        }

        source: "assets/sppedometer_outer_ring_195_86.png"
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#4c4e50";height:756;width:1122}D{i:62}D{i:65}
}
##^##*/

