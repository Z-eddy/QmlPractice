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
        color: "red"
        width: 300
        height: 200
        Rectangle{
            color: "blue"
            width: 50
            height: 50
            MouseArea{
                anchors.fill: parent
                onWheel: {
//                    if(wheel.modifiers){//按下了某个键(Ctrl/shift/alt这些)
                        console.log("change:",wheel.angleDelta.y)
//                    }
                }
            }
        }
    }
}
