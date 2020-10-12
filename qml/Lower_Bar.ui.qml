import QtQuick 2.12
import Tfg 1.0

Item {
    id: element
    width: 1921
    height: 90
    visible: true


    Image {
        id: backimage
        x: 0
        y: 0
        width: 1921
        height: 90
        visible: false
        source: "images/wallpaperBar.jpg"
    }

    Row {
        id: row
        y: 8
        height: 60
        anchors.right: parent.right
        anchors.rightMargin: 115
        anchors.left: parent.left
        anchors.leftMargin: 115
        clip: false
        layer.smooth: false
        activeFocusOnTab: true
        spacing: 360

        Image {
            id: map
            width: 50
            height: 50
            source: "images/alfiler2.png"
        }

        Image {
            id: plane
            width: 50
            height: 50
            source: "images/avion2.png"
        }

        Image {
            id: home
            width: 50
            height: 50
            fillMode: Image.Stretch
            source: "images/casa2.png"
        }

        Image {
            id: radio
            width: 50
            height: 50
            source: "images/senal2.png"
        }

        Image {
            id: engine
            width: 50
            height: 50
            source: "images/motor2.png"
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#000000";formeditorZoom:0.75}D{i:2;anchors_width:1718;anchors_x:39}
}
##^##*/

