import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts 1.0

Item {
    id: element3
    width: 1122
    height: 756

    property alias sbreq_valueText: sbreq_value.text
    property alias activefreq_valueText: activefreq_value.text
    property alias volume_valueWidth: volume_value.width

    Exo {}

    FontLoader {
        source: "CaviarDreams.ttf"
    }

    Text {
        id: element
        x: 124
        y: 70
        width: 530
        height: 86
        color: "#ffffff"
        text: "Radio Configuration"
        font.letterSpacing: 0
        font.weight: Font.Thin
        font.bold: false
        font.family: "Exo 2"
        verticalAlignment: Text.AlignTop
        font.pixelSize: 50
        horizontalAlignment: Text.AlignLeft
    }

    Text {
        id: element1
        x: 96
        y: 241
        width: 296
        height: 47
        color: "#ffffff"
        text: "Active frequency (MHz):"
        font.weight: Font.Thin
        font.family: "Exo 2"
        font.pixelSize: 27
        font.letterSpacing: 0
        horizontalAlignment: Text.AlignLeft
        font.bold: false
        verticalAlignment: Text.AlignTop
    }

    Text {
        id: element2
        x: 96
        y: 343
        width: 296
        height: 47
        color: "#ffffff"
        text: "Stand-by frequency (MHz):"
        font.weight: Font.Thin
        font.family: "Exo 2"
        font.pixelSize: 27
        font.letterSpacing: 0
        horizontalAlignment: Text.AlignLeft
        font.bold: false
        verticalAlignment: Text.AlignTop
    }

    TextField {
        id: activefreq_value
        x: 440
        y: 233
        width: 277
        height: 64
        text: "125.5"
        font.weight: Font.Thin
        font.family: "Cherry"
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 32
        placeholderText: qsTr("Enter a freq...")
    }

    TextField {
        id: sbreq_value
        x: 440
        y: 326
        width: 277
        height: 64
        text: "118.725"
        font.weight: Font.Thin
        font.family: "Cherry"
        placeholderText: qsTr("Enter a freq...")
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 32
    }

    Button {
        id: button_select
        x: 483
        y: 433
        width: 191
        height: 74
        contentItem: Text {
            id: element5
            text: qsTr("Select")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "#000000"
            font.pointSize: 31
            font.family: "Exo 2"
        }
        layer.enabled: true
        background: Image {
            id: backimage
            x: 0
            y: 0
            anchors.fill: parent
            source: "images/whiteback.jpg"
        }

        Connections {
            target: button_select
            onClicked: {
                element3.state = "successState"
            }
        }
    }

    GridLayout {
        id: gridLayout
        x: 830
        y: 227
        width: 233
        height: 232
        columnSpacing: 12
        rowSpacing: 12
        rows: 3
        columns: 3

        RoundButton {
            id: button_1
            text: "1"
            font.weight: Font.Bold
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.bold: true
            font.pointSize: 32
            font.family: "Caviar Dreams"
        }

        RoundButton {
            id: button_2
            text: "2"
            font.weight: Font.Bold
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }

        RoundButton {
            id: button_3
            text: "3"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }

        RoundButton {
            id: button_4
            text: "4"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }

        RoundButton {
            id: button_5
            text: "5"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }

        RoundButton {
            id: button_6
            text: "6"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }

        RoundButton {
            id: button_7
            text: "7"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }

        RoundButton {
            id: button_8
            text: "8"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }

        RoundButton {
            id: button_9
            text: "9"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }
    }

    RowLayout {
        id: rowLayout
        x: 867
        y: 468
        width: 172
        height: 70
        spacing: 10

        RoundButton {
            id: button_10
            text: "."
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }

        RoundButton {
            id: button_11
            text: "0"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 70
            font.family: "Caviar Dreams"
            font.bold: true
            font.pointSize: 32
        }
    }

    Button {
        id: button_other
        x: 375
        y: 433
        width: 408
        height: 76
        visible: false
        background: Image {
            id: backimage1
            x: 0
            y: 0
            source: "images/whiteback.jpg"
            anchors.fill: parent
        }
        contentItem: Text {
            id: element6
            color: "#000000"
            text: qsTr("Add another frequencies")
            font.pointSize: 31
            verticalAlignment: Text.AlignVCenter
            font.family: "Exo 2"
            horizontalAlignment: Text.AlignHCenter
        }
        Connections {
            target: button_other
        }

        Connections {
            target: button_other
            onClicked: {
                element3.state = ""
            }
        }
        layer.enabled: true
    }

    Text {
        id: text_success
        x: 810
        y: 282
        width: 296
        height: 47
        color: "#ffffff"
        text: "Stand-by frequency (MHz):"
        visible: false
        font.letterSpacing: 0
        font.pixelSize: 27
        verticalAlignment: Text.AlignTop
        font.bold: false
        font.family: "Exo 2"
        font.weight: Font.Thin
        horizontalAlignment: Text.AlignLeft
    }

    Image {
        id: imageVol
        x: 82
        y: 600
        width: 47
        height: 56
        fillMode: Image.PreserveAspectFit
        source: "images/volume.png"
    }

    BorderItem {
        id: volume_container
        x: 166
        y: 611
        width: 237
        height: 33
        strokeColor: "#ffffff"

        RectangleItem {
            id: volume_value
            y: 15
            width: 200
            height: 8
            radius: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 19
            strokeColor: "#ffffff"
        }
    }

    RoundButton {
        id: menos_volumen_btn
        x: 166
        y: 650
        width: 33
        height: 41
        text: ""
        background: Image {
            id: backvolmas
            x: 0
            y: 0
            anchors.fill: parent
            source: "images/menos.png"
        }

        Connections {
            target: menos_volumen_btn
            onClicked: if (volume_value.width >= 10) {
                           volume_value.width = volume_value.width - 10
                       } else {
                           volume_value.width = 0
                       }
        }
    }

    RoundButton {
        id: mas_volumen_btn
        x: 353
        y: 650
        width: 39
        height: 35
        text: ""
        background: Image {
            id: backvolmas1
            x: 0
            y: 0
            source: "images/mas.png"
            anchors.fill: parent
        }

        Connections {
            target: mas_volumen_btn
            onClicked: if (volume_value.width <= 190) {
                           volume_value.width = volume_value.width + 10
                       }
        }
    }

    Image {
        id: change
        x: 723
        y: 282
        width: 92
        height: 63
        fillMode: Image.PreserveAspectFit
        source: "images/intercambio.png"
    }

    states: [
        State {
            name: "successState"

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: button_other
                visible: true
            }

            PropertyChanges {
                target: button_select
                visible: false
            }

            PropertyChanges {
                target: gridLayout
                visible: false
            }

            PropertyChanges {
                target: rowLayout
                visible: false
            }

            PropertyChanges {
                target: text_success
                x: 810
                y: 282
                width: 210
                height: 47
                text: "Frequencies added succesfully!"
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                visible: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:756;width:1122}D{i:33}
}
##^##*/

