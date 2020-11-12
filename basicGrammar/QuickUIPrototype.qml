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
        width: 300
        height: 200
        anchors.centerIn: parent

        Rectangle{
            id:rect0_
            width: 30
            height: 20
            color: "red"
            x:50
            y:100
//            anchors.centerIn: parent
        }

        states: [
            State {
                name: "state0"
                PropertyChanges {//使用属性改变margin
                    target:rect0_
                    anchors.leftMargin:50
                }
                AnchorChanges{//改变锚边
                    target: rect0_
                    anchors.left:rect_.left
                }
            },
            State {
                name: "state1"
                PropertyChanges {
                    target:rect0_
                    anchors.leftMargin:10
                }
                AnchorChanges{
                    target: rect0_
                    anchors.left:rect_.right
                }
            }
        ]

        MouseArea{
            anchors.fill: parent
            onPressed: rect_.state="state0"
            onReleased: rect_.state="state1"
        }
    }
}
