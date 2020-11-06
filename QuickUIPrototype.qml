import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
        id:theRect
        width:mainUI.width/2
        height:mainUI.height/2
        anchors.centerIn: parent
        //加入focus后，才能接收到键盘的输入
        focus: true
        Text {
            id: text
            font{pixelSize: 50;bold: true}
            text: qsTr("text")
            anchors.centerIn: parent
        }
        Keys.onSpacePressed: {
            console.log("space pressed")
            //js的赋值会导致绑定的属性失效
            width=mainUI.width/3
        }
        Keys.onDigit0Pressed: {
            console.log("0 pressed")
            //使用Qt.binding进行重新绑定
            width=Qt.binding(function(){
                return parent.width/4
            })
        }
    }
}
