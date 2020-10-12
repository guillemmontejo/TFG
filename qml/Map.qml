import QtQuick 2.12
import Tfg 1.0
import QtLocation 5.6
import QtPositioning 5.6

Item {
    id: element
    x: 0
    y: 0
    width: 550
    height: 600

    PositionSource {
        active: true
        onPositionChanged: {
            map.center = position.coordinate
        }
    }

    Plugin {
        id: mapPlugin
        name: "osm" // "mapboxgl", "esri", ...
    }

    Map {
        id: map
        tilt: 0
        anchors.fill: parent
        anchors.centerIn: parent
        plugin: mapPlugin
        copyrightsVisible: false
        center: QtPositioning.coordinate(59.91, 10.75) // Oslo
        zoomLevel: 14

        MapQuickItem {
            id: plane
            coordinate: map.center
            sourceItem: Image {
                id: planeImage
                width: 50
                height: 50
                source: "images/avion.png"
            }
        }

    }
}


/*##^##
Designer {
    D{i:0;height:586;width:751}
}
##^##*/
