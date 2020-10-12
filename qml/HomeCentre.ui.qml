import QtQuick 2.12
import Tfg 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Effects 1.0

Item {
    id: element
    width: 1122
    height: 756

    ArtificialHorizon {
        id: artificialHorizon
        x: 43
        y: 127
        width: 581
        height: 503
        contextType: "2d"
        pitch: 0
        pitchScale: 30
        roll: 0
    }
}




/*##^##
Designer {
    D{i:0;height:756;width:1122}
}
##^##*/
