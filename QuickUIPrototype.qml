import QtQuick 2.12
import QtQuick.Window 2.12
import Button 1.0 as TheBtn

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    TheBtn.TheButton{
        onPressedChanged: console.log(pressed)
    }
}
