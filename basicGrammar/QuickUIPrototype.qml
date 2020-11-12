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
        //镜像翻转
        LayoutMirroring.enabled:true
        //子项是否继承翻转属性
        LayoutMirroring.childrenInherit: true
        width: 300
        height: 60
        color: "pink"
        border.width: 1

        Row{
            anchors{left: parent.left;margins: 5}
            y:5;spacing: 5;padding: 5

            Repeater{
                model: 5
                Rectangle{
                    color: "grey"
                    opacity: (5-index)/5
                    width: 40
                    height: 40
                    Text {
                        text: index+1
                        anchors.centerIn: parent
                        font.bold: true
                    }
                }
            }
        }
    }
}
