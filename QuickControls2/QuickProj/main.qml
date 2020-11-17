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

    Switch{
        id:control
        text: qsTr("Style Switch")
        checked: true

        indicator: Rectangle{
            implicitHeight: 48
            implicitWidth: 48
            x:control.leftPadding
            y:parent.height/2-height/2
            radius: 13
            color: control.checked?"yellow":"green"
            border.color: control.checked?"red":"blue"
            Rectangle{
                x:control.checked?parent.width-width:0
                width: 26;height: 26
                radius: 13//圆形
                color: control.down?"#cccccc":"#ffffff"
                border.color: control.checked?(control.down?"#17a81a":"#21be2b"):"#999999"
            }
        }

        contentItem: Label{
            text: control.text
            font: control.font
            opacity: enabled?1.0:0.3
            color: control.down?"red":"pink"
            horizontalAlignment: "AlignHCenter"
            verticalAlignment: "AlignVCenter"
            leftPadding: control.indicator.width+control.spacing
        }
    }
}
