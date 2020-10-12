import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtQuick.Layouts 1.11

Item {
    width: 1921
    height: 73
    property alias humidity_lblText: humidity_lbl.text
    property alias down_imgRotation: down_img.rotation
    property alias altitude_lblText: altitude_lbl.text
    property alias temperature_lblText: temperature_lbl.text
    property alias dateText: date.text
    property alias timeText: time.text
    property alias freq2_lblText: freq2_lbl.text
    property alias freq_lblText: freq_lbl.text

    Exo {}

    Image {
        id: backimage
        x: 0
        y: 0
        width: 1921
        height: 73
        source: "images/wallpaperBar.jpg"

        Rectangle {
            id: rectangle
            x: 0
            y: 71
            width: 1921
            height: 2
            color: "#ffffff"
        }

        Image {
            id: settings
            x: 24
            y: 9
            width: 50
            height: 50
            fillMode: Image.PreserveAspectFit
            source: "images/ajustes2.png"
        }

        Text {
            id: date
            x: 1646
            y: 9
            width: 214
            height: 50
            color: "#ffffff"
            text: qsTr("16/09/2020")
            font.weight: Font.Bold
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 37
        }

        ToolSeparator {
            id: toolSeparator
            x: 1581
            y: 12
            width: 13
            height: 47
        }

        Text {
            id: time
            x: 1357
            y: 9
            width: 176
            height: 50
            color: "#ffffff"
            text: qsTr("13:55:22")
            font.weight: Font.Bold
            horizontalAlignment: Text.AlignHCenter
            font.family: "Exo 2"
            font.pixelSize: 37
        }

        ToolSeparator {
            id: toolSeparator1
            x: 1289
            y: 12
            width: 13
            height: 47
        }

        Text {
            id: altitude_lbl
            x: 1009
            y: 9
            width: 131
            height: 50
            color: "#ffffff"
            text: qsTr("3000")
            font.weight: Font.Bold
            horizontalAlignment: Text.AlignHCenter
            font.family: "Exo 2"
            font.pixelSize: 37
        }

        ToolSeparator {
            id: toolSeparator2
            x: 954
            y: 13
            width: 13
            height: 47
        }

        Text {
            id: com_lbl
            x: 586
            y: 9
            width: 100
            height: 50
            color: "#ffffff"
            text: qsTr("COM")
            font.weight: Font.Bold
            horizontalAlignment: Text.AlignHCenter
            font.family: "Exo 2"
            font.pixelSize: 37
        }

        Text {
            id: freq_lbl
            x: 704
            y: 9
            width: 104
            height: 50
            color: "#4fe348"
            text: qsTr("125.5")
            font.weight: Font.ExtraBold
            horizontalAlignment: Text.AlignHCenter
            font.family: "Exo 2"
            font.pixelSize: 40
        }

        Text {
            id: freq2_lbl
            x: 822
            y: 20
            width: 100
            height: 29
            color: "#f47171"
            text: qsTr("118.725")
            font.bold: true
            font.italic: false
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignHCenter
            font.family: "Exo 2"
            font.pixelSize: 25
        }

        ToolSeparator {
            id: toolSeparator3
            x: 518
            y: 12
            width: 13
            height: 47
        }

        Text {
            id: degrees_lbl
            x: 195
            y: 9
            width: 37
            height: 50
            color: "#ffffff"
            text: qsTr("ºC")
            font.weight: Font.Bold
            horizontalAlignment: Text.AlignHCenter
            font.family: "Exo 2"
            font.pixelSize: 37
        }

        Text {
            id: temperature_lbl
            x: 134
            y: 9
            width: 65
            height: 50
            color: "#ffffff"
            text: "23"
            font.weight: Font.Bold
            font.family: "Exo 2"
            font.pixelSize: 37
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: alt_lbl
            x: 1146
            y: 9
            width: 47
            height: 50
            color: "#ffffff"
            text: qsTr("ft ")
            font.weight: Font.Bold
            font.family: "Exo 2"
            font.pixelSize: 37
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: percent_lbl
            x: 460
            y: 9
            width: 37
            height: 50
            color: "#ffffff"
            text: "%"
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 28
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.Bold
        }

        Text {
            id: humidity_lbl
            x: 410
            y: 9
            width: 44
            height: 50
            color: "#ffffff"
            text: "17"
            font.pixelSize: 37
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.Bold
        }

        Text {
            id: relativehum_lbl
            x: 340
            y: 9
            width: 52
            height: 50
            color: "#ffffff"
            text: "RH"
            font.pixelSize: 37
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.Bold
        }
    }

    Image {
        id: down_img
        x: 1191
        y: 18
        width: 84
        height: 38
        rotation: 180
        opacity: 0.62
        source: "images/flecha2.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;height:73;width:1921}
}
##^##*/

