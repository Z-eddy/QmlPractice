import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")

    background: Rectangle{
        gradient: Gradient{
            GradientStop{position: 0;color: "#ffffff"}
            GradientStop{position: 1;color: "#c1bbf9"}
        }
    }

    CheckBox{
        id:checkBox_
        text: qsTr("测试")
        //开启部分选中
        tristate: true

        //自定义回调函数
        nextCheckState: function(){
            if(checkState===Qt.Checked){
                return Qt.Unchecked
            }
            else{
                return Qt.Checked
            }
        }

        //自定义风格
        background:Rectangle{
            color: "red"
        }
        indicator: Rectangle{
            id:rect_
            implicitHeight: 26
            implicitWidth: 26
            x:checkBox_.leftPadding
            y:parent.height/2-height/2
            radius: 3
            border.color: checkBox_.down?"yellow":"green"
        }
        Rectangle{
            anchors.centerIn: rect_
            width:rect_.width-10
            height:rect_.height-10
            radius: 2
            color: checkBox_.down?"yellow":"green"
            visible: checkBox_.checked
        }
        contentItem: Label{
            text: checkBox_.text
            font: checkBox_.font
            horizontalAlignment: "AlignHCenter"
            verticalAlignment: "AlignVCenter"
            leftPadding: rect_.width+checkBox_.spacing
        }
    }
}
