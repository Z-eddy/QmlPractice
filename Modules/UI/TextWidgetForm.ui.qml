import QtQuick 2.4

Item {
    width: 400
    height: 400

    Text {
        id: text1
        x: parent.width / 2
        y: parent.height / 2
        text: qsTr("Text")
        font.pixelSize: 12
    }
}
