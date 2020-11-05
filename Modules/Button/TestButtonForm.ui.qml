import QtQuick 2.4

Rectangle{
    id: theRect
    width: 200
    height: 40
    Text {
        id: textName
        text: qsTr("textTest_"+someText.text)
        anchors.centerIn: parent
    }
    property alias buttonText:textName.text
    default property var someText
}
