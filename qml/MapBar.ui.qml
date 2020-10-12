import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts 1.11

Item {
    width: 750
    height: 80
    property alias track_lblText: track_lbl.text
    property alias gpsAltitude_lblText: gpsAltitude_lbl.text
    property alias longitude_lblText: longitude_lbl.text
    property alias latitude_lblText: latitude_lbl.text
    property alias groundSpeed_lblText: groundSpeed_lbl.text

    RectangleItem {
        id: rectangle8
        x: 563
        y: 0
        width: 187
        height: 28
        radius: 0
        strokeColor: "#00ffffff"
        strokeWidth: 0
    }

    RectangleItem {
        id: rectangle7
        x: 378
        y: 0
        width: 187
        height: 28
        radius: 0
        strokeColor: "#00ffffff"
        strokeWidth: 0
    }

    RectangleItem {
        id: rectangle6
        x: 191
        y: 0
        width: 189
        height: 28
        radius: 0
        strokeColor: "#00ffffff"
        strokeWidth: 0
    }

    RectangleItem {
        id: rectangle5
        x: 0
        y: 0
        width: 193
        height: 28
        radius: 0
        strokeWidth: 0
        strokeColor: "#00ffffff"
    }

    Exo {}

    FontLoader {
        source: "CaviarDreams.ttf"
    }

    Text {
        id: element
        x: 0
        y: 0
        width: 193
        height: 28
        color: "#020202"
        text: qsTr("Ground Speed")
        font.weight: Font.Normal
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        font.family: "Caviar Dreams"
        styleColor: "#ffffff"
        font.pixelSize: 19
    }

    RectangleItem {
        id: rectangle
        x: 191
        y: 0
        width: 2
        height: 80
        radius: 0
        strokeColor: "#00ffffff"
        strokeWidth: 1
    }

    Text {
        id: element1
        x: 191
        y: 0
        width: 189
        height: 28
        color: "#020202"
        text: qsTr("Coordinates")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 19
        font.family: "Caviar Dreams"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#ffffff"
        font.weight: Font.Normal
    }

    RectangleItem {
        id: rectangle1
        x: 378
        y: 0
        width: 2
        height: 80
        radius: 0
        strokeColor: "#00ffffff"
        strokeWidth: 1
    }

    Text {
        id: element2
        x: 378
        y: 0
        width: 187
        height: 28
        color: "#020202"
        text: qsTr("GPS Altitude")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 19
        font.family: "Caviar Dreams"
        font.bold: true
        styleColor: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Normal
    }

    RectangleItem {
        id: rectangle2
        x: 563
        y: 0
        width: 2
        height: 80
        radius: 0
        strokeColor: "#00ffffff"
        strokeWidth: 1
    }

    Text {
        id: element3
        x: 563
        y: 0
        width: 187
        height: 28
        color: "#020202"
        text: qsTr("Track")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 19
        font.family: "Caviar Dreams"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#ffffff"
        font.weight: Font.Normal
    }

    Text {
        id: groundSpeed_lbl
        x: 46
        y: 34
        width: 69
        height: 38
        color: "#ffffff"
        text: qsTr("0.0")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 42
        font.family: "Exo 2"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#ffffff"
        font.weight: Font.Normal
    }

    Text {
        id: element5
        x: 116
        y: 44
        width: 41
        height: 28
        color: "#ffffff"
        text: qsTr("km/h")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        font.family: "Caviar Dreams"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#ffffff"
        font.weight: Font.Normal
    }

    RectangleItem {
        id: rectangle3
        x: 0
        y: 26
        width: 750
        height: 2
        radius: 0
        strokeColor: "#00ffffff"
        strokeWidth: 1
    }

    Text {
        id: element6
        x: 199
        y: 26
        width: 31
        height: 28
        color: "#ffffff"
        text: qsTr("Lat")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        font.family: "Caviar Dreams"
        font.bold: true
        styleColor: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Normal
    }

    Text {
        id: element7
        x: 199
        y: 52
        width: 31
        height: 28
        color: "#ffffff"
        text: qsTr("Lon")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        font.family: "Caviar Dreams"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#ffffff"
        font.weight: Font.Normal
    }

    Text {
        id: latitude_lbl
        x: 236
        y: 26
        width: 136
        height: 28
        color: "#ffffff"
        text: qsTr("41.234698")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
        font.family: "Caviar Dreams"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#ffffff"
        font.weight: Font.Normal
    }

    Text {
        id: longitude_lbl
        x: 236
        y: 52
        width: 136
        height: 28
        color: "#ffffff"
        text: qsTr("2.491238")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
        font.family: "Caviar Dreams"
        font.bold: true
        styleColor: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Normal
    }

    Text {
        id: gpsAltitude_lbl
        x: 410
        y: 34
        width: 101
        height: 38
        color: "#ffffff"
        text: qsTr("3000")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 42
        font.family: "Exo 2"
        font.bold: true
        styleColor: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Normal
    }

    Text {
        id: element11
        x: 527
        y: 44
        width: 24
        height: 28
        color: "#ffffff"
        text: qsTr("ft")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        font.family: "Caviar Dreams"
        font.bold: true
        styleColor: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Normal
    }

    Text {
        id: track_lbl
        x: 602
        y: 34
        width: 86
        height: 38
        color: "#ffffff"
        text: qsTr("359")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 42
        font.family: "Exo 2"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#ffffff"
        font.weight: Font.Normal
    }

    Text {
        id: element13
        x: 694
        y: 26
        width: 31
        height: 28
        color: "#ffffff"
        text: qsTr("º")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 29
        font.family: "Exo 2"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#ffffff"
        font.weight: Font.Normal
    }

    RectangleItem {
        id: rectangle4
        x: 0
        y: 0
        width: 750
        height: 80
        radius: 3
        strokeWidth: 3
        fillColor: "#00000000"
        strokeColor: "#ffffff"
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#808080";height:80;width:751}
}
##^##*/

