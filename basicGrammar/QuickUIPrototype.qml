import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:1024
    height:900
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Text {
        id: text_
        text: qsTr("Date: %1").arg(Date().toLocaleString(Qt.locale()))
    }
}
