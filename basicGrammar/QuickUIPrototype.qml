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
        id:rect_
        color: "red"
        width: 100
        height: 60
        opacity: (mainUI.width-x)/mainUI.width
        MouseArea{
            anchors.fill: parent
            drag{
                target: rect_
                axis:Drag.XAndYAxis
                minimumX: 0
                maximumX: mainUI.width - rect_.width
            }
        }
    }
}
