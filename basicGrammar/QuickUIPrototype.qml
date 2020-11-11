import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:800
    height:600
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Grid{
        padding: 5

        Repeater{
            model: 10//创建10个
            Rectangle{//delegate
                id:rect_
                width: 40
                height: 30
                border.width: 2
                color: Positioner.isFirstItem?"red":"lightsteelblue"

                Text {
                    id: text_
                    anchors.centerIn: parent
                    text: rect_.Positioner.index//显示自己的索引
                }
            }
        }
    }
}
