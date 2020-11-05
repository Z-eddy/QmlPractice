import QtQuick 2.4

Rectangle{
    id: theRect
    width: 200
    height: 40
    Text {
        id: textName
        text: qsTr("textTest")
        anchors.centerIn: parent
    }
    property alias buttonText:textName.text
    property var testInt:10
}
