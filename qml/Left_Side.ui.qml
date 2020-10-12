import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Effects 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtQuick.Timeline 1.0

Item {
    id: element
    width: 350
    height: 800

    //Velocity properties
    property alias rotate_velRotation: rotate_vel.rotation
    property alias arc_velocityEnd: arc_velocity.end
    property alias velocity_valueText: velocity_value.text

    //RPM properties
    property alias rpm_valueText: rpm_value.text
    property alias rotate_rpmRotation: rotate_rpm.rotation
    property alias arc_rpmEnd: arc_rpm.end
    property alias arc_rpmStrokeColor: arc_rpm.strokeColor

    //Manifold properties
    property alias manifold_valueText: manifold_value.text
    property alias rotate_manifoldRotation: rotate_manifold.rotation
    property alias arc_manifoldEnd: arc_manifold.end

    //Fuel properties
    property alias fuel_BarColor: fuel_Bar.color
    property alias fuel_BarWidth: fuel_Bar.width

    Exo {}

    Rectangle {
        id: rectangle
        x: 356
        width: 3
        height: 700
        color: "#ffffff"
        anchors.top: parent.top
        anchors.topMargin: 55
    }

    Image {
        id: anemometer
        x: 56
        y: 33
        width: 236
        height: 203
        source: "assets/sppedometer_outer_ring_195_86.png"
        fillMode: Image.PreserveAspectFit

        ArcItem {
            id: arc_velocity
            x: 20
            y: 5
            width: 201
            height: 198
            anchors.horizontalCenter: parent.horizontalCenter
            strokeColor: "#f8fff8"
            fillColor: "#00230000"
            strokeWidth: 20
            end: 0
            begin: -150
        }

        ArcItem {
            id: arc_velocity1
            x: 49
            y: 32
            width: 138
            height: 138
            strokeColor: "#f8fff8"
            strokeWidth: 5
            end: 150
            fillColor: "#00230000"
            begin: -150
        }

        Item {
            id: rotate_vel
            x: 68
            y: 52
            width: 100
            height: 100
            rotation: 0

            Image {
                id: needle_vel
                x: 30
                y: -40
                width: 40
                height: 30
                rotation: 60.48
                source: "assets/rpm_needle_195_65.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Image {
            id: anemometer_marker
            x: 40
            y: 37
            width: 157
            height: 130
            source: "images/speed_dial.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: velocity_value
            x: 78
            y: 53
            width: 82
            height: 46
            color: "#ffffff"
            text: qsTr("120")
            font.pixelSize: 43
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: kmh_lbl
            x: 94
            y: 127
            width: 51
            height: 20
            color: "#ffffff"
            text: qsTr("km/h")
            renderType: Text.NativeRendering
            font.pixelSize: 14
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: kmh_lbl1
            x: 86
            y: 105
            width: 66
            height: 20
            color: "#ffffff"
            text: qsTr("AIRSPEED")
            renderType: Text.NativeRendering
            font.pixelSize: 19
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.Thin
        }
    }

    Image {
        id: rpm
        x: 57
        y: 271
        width: 236
        height: 203
        source: "assets/sppedometer_outer_ring_195_86.png"
        fillMode: Image.PreserveAspectFit

        ArcItem {
            id: arc_rpm
            x: 20
            y: 5
            width: 201
            height: 198
            anchors.horizontalCenter: parent.horizontalCenter
            end: -60
            strokeColor: "#78ed74"
            fillColor: "#00230000"
            strokeWidth: 20
            begin: -150
        }

        Rpm_colorDialBig {
            id: rpm_colorDial
            x: 48
            y: 31
            width: 140
            height: 140
        }

        Item {
            id: rotate_rpm
            x: 68
            y: 52
            width: 100
            height: 100
            Image {
                id: needle_rpm
                x: 30
                y: -40
                width: 40
                height: 30
                source: "assets/rpm_needle_195_65.png"
                rotation: 60.48
                fillMode: Image.PreserveAspectFit
            }
            rotation: -61
        }

        Image {
            id: rpm_marker
            x: 40
            y: 37
            width: 157
            height: 130
            source: "images/speed_dial.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: rpm_value
            x: 78
            y: 54
            width: 82
            height: 46
            color: "#ffffff"
            text: qsTr("2039")
            style: Text.Normal
            font.pixelSize: 43
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: rpm_lbl
            x: 78
            y: 116
            width: 82
            height: 34
            color: "#ffffff"
            text: qsTr("RPM x 1000")
            renderType: Text.NativeRendering
            font.pixelSize: 19
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.Thin
        }
    }

    Image {
        id: manifold
        x: 57
        y: 500
        width: 236
        height: 203

        ArcItem {
            id: arc_manifold
            x: 20
            y: 5
            width: 201
            height: 198
            anchors.horizontalCenter: parent.horizontalCenter
            end: 61
            strokeColor: "#fae779"
            fillColor: "#00230000"
            strokeWidth: 20
            begin: -150
        }

        ArcItem {
            id: arc_manifold1
            x: 49
            y: 33
            width: 138
            height: 138
            strokeColor: "#fae779"
            strokeWidth: 5
            end: 150
            fillColor: "#00230000"
            begin: -150
        }

        Item {
            id: rotate_manifold
            x: 68
            y: 52
            width: 100
            height: 100
            scale: 1
            Image {
                id: needle_manifold
                x: 30
                y: -40
                width: 40
                height: 30
                source: "assets/rpm_needle_195_65.png"
                rotation: 60.48
                fillMode: Image.PreserveAspectFit
            }
            rotation: 62
        }

        Image {
            id: manifold_marker
            x: 40
            y: 37
            width: 157
            height: 130
            source: "images/speed_dial.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: manifold_lbl
            x: 77
            y: 109
            width: 82
            height: 24
            color: "#ffffff"
            text: "MANIFOLD"
            renderType: Text.NativeRendering
            font.pixelSize: 19
            font.family: "Exo 2"
            font.weight: Font.Thin
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: manifold_value
            x: 77
            y: 57
            width: 82
            height: 46
            color: "#ffffff"
            text: qsTr("29")
            font.pixelSize: 43
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.Thin
        }

        Text {
            id: manifold_lbl1
            x: 78
            y: 134
            width: 82
            height: 24
            color: "#ffffff"
            text: "In Hg"
            textFormat: Text.AutoText
            renderType: Text.NativeRendering
            font.pixelSize: 19
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.Thin
        }

        source: "assets/sppedometer_outer_ring_195_86.png"
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: fuel_rectangle
        x: 73
        y: 760
        width: 241
        height: 30
        color: "#00000000"
        border.color: "#ffffff"

        Rectangle {
            id: fuel_Bar
            x: 8
            y: 8
            width: 225
            height: 14
            color: "#ffffff"
        }
    }

    Image {
        id: fuel_img
        x: 19
        y: 758
        width: 41
        height: 33
        source: "images/gasolinera.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;height:800;width:350}
}
##^##*/

