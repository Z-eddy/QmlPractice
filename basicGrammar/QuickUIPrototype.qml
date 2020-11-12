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
        MouseArea{
            anchors.fill: parent
            onClicked: console.log("aaaaaaaaaaaaaa click red rect")
            onDoubleClicked: {
                console.log("aaaaaaaaaaaa double click red rect")
                mouse.accepted=false
            }
        }
        Rectangle{
            color: "blue"
            width: 50
            height: 50
            MouseArea{
                anchors.fill: parent
                //可向下传播,没定义槽时自动传递,定义了槽需要accepted false才可以传播
                propagateComposedEvents: true
                onClicked: {
                    console.log("bbbbbbbbbb blue click")
                    mouse.accepted=false
                }
                /*
                onDoubleClicked: {
                    console.log("bbbbbbbbbb blue double click")
                    mouse.accepted=false
                }
                */
            }
        }
    }
}
