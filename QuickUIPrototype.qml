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


    //Connections Qt不推荐使用了?!!!

    /* 连接自带的信号
    MouseArea{
        id:mainArea
        anchors.fill: parent
    }

    Connections{
        target: mainArea
        onClicked:text0.text="area clicked"
    }
    */

    //连接自定义的信号
    Connections{
        target:rect0
        onPressButton:text0.text="presse button"
    }
    Connections{
        target: rect0
        onReleaseButton:text0.text="release!!!"
    }
}
