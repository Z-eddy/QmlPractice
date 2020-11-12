import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:800
    height:600
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
        id:rect0_
        width: 300
        height: 200
        color: "red"
    }
    Rectangle{
        id:rect1_
        width: 200
        height: 100
        color: "blue"
        anchors{
//            left: rect0_.lef
//            top: rect0_.bottom
            topMargin: 5
            centerIn: rect0_
            verticalCenterOffset:80
            horizontalCenterOffset: 20
        }
    }
}
