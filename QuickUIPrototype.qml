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

    //于对象Rectangle中定义2个信号
    Rectangle{
        id: rect0
        anchors.centerIn: parent
        signal pressButton
        signal releaseButton
        width: 200
        height: 50

        MouseArea{
            anchors.fill: parent
            onPressed: {
                rect0.pressButton()
            }
            onReleased: {
                rect0.releaseButton()
            }
        }
    }
    //触发
    Text {
        id: text0
        text: qsTr("textInitialize")
        anchors.centerIn: rect0
    }

    //Qt推荐使用connect进行连接
    Component.onCompleted: {
        rect0.pressButton.connect(onTextShowPress)
        rect0.releaseButton.connect(onTextShowRelease)
    }

    function onTextShowPress(){
        text0.text="pressed!"
    }
    function onTextShowRelease(){
        text0.text="release!"
    }
}
