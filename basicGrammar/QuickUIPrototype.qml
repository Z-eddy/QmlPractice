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
        id:rect0_
        width: 300
        height: 200
        opacity: 0.5
        color: "blue"
        Rectangle{
            id:rect1_
            width: 300
            height: 200
            x:parent.x+200
            y:parent.y+100
            color: "red"
        }
    }
}
