import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    id:mainUI
    width:800
    height:600
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
        width: 200
        height: text_.height
        anchors.centerIn: parent
        color: "pink"
        Text {
            id: text_
            width: parent.width
            anchors.centerIn: parent
            font.pixelSize: 30
            wrapMode: Text.WordWrap
        }
        Timer{
            interval: 500//500ms
            repeat: true
            running:true
            onTriggered: {
                text_.text=Date().toString()
            }
        }
    }
}
