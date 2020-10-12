import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.Components 1.0

Item {
    id: element
    width: 140
    height: 140

    ArcItem {
        id: out_arc
        x: 0
        y: 0
        width: 140
        height: 140
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 0
        clip: false
        begin: -150
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        strokeColor: "#ffffff"
        strokeWidth: 2
        antialiasing: false
        end: 150
        capStyle: 0
        fillColor: "#00230000"
        strokeStyle: 1

        ArcItem {
            id: redArc1
            x: -1
            y: -1
            width: 140
            height: 140
            begin: -90
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#f41111"
            strokeWidth: 6
            antialiasing: false
            end: -150
            capStyle: 0
            fillColor: "#00230000"
            strokeStyle: 1
        }

        ArcItem {
            id: yellowArc1
            x: -1
            y: -1

            width: 140
            height: 140
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#f9f629"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 6
            antialiasing: false
            end: -90
            capStyle: 0
            fillColor: "#00230000"
            strokeStyle: 1
            begin: -72.8
        }

        ArcItem {
            id: greenArc
            x: 0
            y: -7
            width: 140
            height: 140
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#78ed74"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 6
            antialiasing: false
            end: -72.8
            capStyle: 0
            fillColor: "#00230000"
            begin: 85.8
            strokeStyle: 1
        }

        ArcItem {
            id: yellowArc2
            x: 2
            y: -4
            width: 140
            height: 140
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#f9f629"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 6
            antialiasing: false
            end: 85.7
            capStyle: 0
            fillColor: "#00230000"
            begin: 98.6
            strokeStyle: 1
        }

        ArcItem {
            id: redArc2
            x: -1
            y: -9
            width: 140
            height: 140
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#f41111"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 6
            antialiasing: false
            end: 98.6
            capStyle: 0
            fillColor: "#00230000"
            strokeStyle: 1
            begin: 150
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#4c4e50";formeditorZoom:1.5}
}
##^##*/

