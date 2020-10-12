import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0

Item {
    id: element1
    width: 280
    height: 50
    property alias coolantMarkerX: coolantMarker.x

    RectangleItem {
        id: redBar
        x: 193
        y: 17
        width: 75
        height: 16
        radius: 0
        strokeColor: "#f41111"
        fillColor: "#f41111"
    }

    RectangleItem {
        id: yellowBar1
        x: 12
        y: 17
        width: 41
        height: 16
        radius: 0
        strokeColor: "#f9f629"
        fillColor: "#f9f629"
    }

    RectangleItem {
        id: yellowBar
        x: 168
        y: 17
        width: 25
        height: 16
        radius: 0
        strokeColor: "#f9f629"
        fillColor: "#f9f629"
    }

    BorderItem {
        id: element
        x: 8
        y: 8
        width: 256
        height: 28
        radius: 3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        strokeColor: "#ffffff"
    }

    RectangleItem {
        id: greenBar
        x: 53
        y: 17
        width: 115
        height: 16
        radius: 0
        strokeColor: "#78ed74"
        fillColor: "#78ed74"
    }

    TriangleItem {
        id: coolantMarker
        x: 68
        y: 39
        width: 17
        height: 11
        radius: 0
    }
}

/*##^##
Designer {
    D{i:0;height:50;width:280}
}
##^##*/

