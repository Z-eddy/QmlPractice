import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:1024
    height:900
    visible: true
//    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
        width: 200
        height: 50
        anchors.centerIn: parent
        color:"yellow"

        TextInput{
            color: "blue"
            font.pixelSize: parent.height-2
            validator: IntValidator{
                bottom: 10
                top: 20
            }
            anchors{fill: parent;centerIn: parent}
            focus: true

            onEditingFinished: console.log(text)
        }

    }
}
