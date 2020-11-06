import QtQuick 2.12
import QtQuick.Window 2.12
//不能让.qml的文件与其所在文件夹重名！
import Button 1.0 as TempButton

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    signal send()
    onSend: console.log("send msg")

    MouseArea{
        id:theMouseArea
        anchors.fill: parent
        onClicked: console.log("mouseArea clicked")
    }

    Component.onCompleted: {
        theMouseArea.clicked.connect(mainUI.send)
    }
}
