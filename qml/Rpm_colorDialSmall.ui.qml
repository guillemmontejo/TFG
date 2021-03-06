import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.Components 1.0

Item {
    id: element
    width: 120
    height: 120

    ArcItem {
        id: out_arc
        x: 0
        y: 0
        width: 113
        height: 113
        visible: true
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 0
        clip: false
        begin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        strokeColor: "#ffffff"
        strokeWidth: 1
        antialiasing: false
        end: 0
        capStyle: 0
        fillColor: "#00230000"
        strokeStyle: 1

        ArcItem {
            id: redArc1
            x: -1
            y: -1
            width: 113
            height: 113
            begin: -90
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#f41111"
            strokeWidth: 5
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

            width: 113
            height: 113
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#f9f629"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 5
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
            width: 113
            height: 113
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#78ed74"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 5
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
            width: 113
            height: 113
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#f9f629"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 5
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
            width: 113
            height: 113
            anchors.verticalCenter: parent.verticalCenter
            strokeColor: "#f41111"
            anchors.horizontalCenter: parent.horizontalCenter
            strokeWidth: 5
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
    D{i:0;height:110;width:110}
}
##^##*/

