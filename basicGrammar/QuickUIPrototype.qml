import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:1024
    height:900
    visible: true
//    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Text {
        id: text_
        width: 100
        height: 50
        font{pixelSize: 25}
        text: qsTr("textabcdefghijklmnopqrstuvwxyz0123456789")
        color: "#FF0000"
        elide:Text.ElideRight
        wrapMode: Text.Wrap
    }
}
