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

    Column{
        id:column_
        Button{
            text: "btn0"
            checkable: true
            ButtonGroup.group: btnGroup_
        }
        Button{
            text: "btn1"
            checkable: true
            ButtonGroup.group: btnGroup_
        }
        Button{
            text: "btn2"
            //如果没有设定checkable则会忽略ButtonGroup
//            checkable: true
            ButtonGroup.group: btnGroup_
        }
    }
    ButtonGroup{
        id:btnGroup_
        //可以一组设定互斥
//        buttons: column_.children
    }
}
