import QtQuick 2.10
import Tfg 1.0
import QtQuick.Studio.Components 1.0

Item {
    width: 1122
    height: 756

    //Map bar properties
    property alias mapBarGpsAltitude_lblText: mapBar.gpsAltitude_lblText
    property alias mapBarGroundSpeed_lblText: mapBar.groundSpeed_lblText
    property alias mapBarLatitude_lblText: mapBar.latitude_lblText
    property alias mapBarLongitude_lblText: mapBar.longitude_lblText
    property alias mapBarTrack_lblText: mapBar.track_lblText

    MapBar {
        id: mapBar
        x: 38
        y: 37
        width: 751
        height: 80
    }

    BorderItem {
        id: element
        x: 38
        y: 117
        width: 751
        height: 586
        strokeColor: "#ffffff"

        Map {
            id: map
            anchors.fill: parent
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#4c4e50";formeditorZoom:0.6600000262260437;height:756;width:1122}
D{i:3}
}
##^##*/

