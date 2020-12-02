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

    Rectangle{
        id:rect_
        width: 60
        height: 40
        border{width: 1}
        opacity: 0.5
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton|Qt.RightButton
            onClicked: {
                if(mouse.button===Qt.RightButton){
                    console.log("clicked")
                    //不操作时,重复触发,引起BUG
                    menu_.popup()
                }
            }
            onPressAndHold: {
                //                if(mouse.source===Qt.MouseEventNotSynthesized){
                console.log(mouse.source)//响应的是Qt::MouseEventSynthesizedByQt
                menu_.popup()
                menu_.clear()
                //                }
            }
            Menu{
                id:menu_
                MenuItem{text: "Cut"}
                MenuItem{text: "Copy"}
                MenuItem{text: "Paste"}
            }
        }
    }
    Button{
        id:btn_
        anchors.top:rect_.bottom
        anchors.left: rect_.left
        onClicked:{
            btnMenu_.x=btn_.width/2
            btnMenu_.y=btn_.height/2
            btnMenu_.open()
        }
        Menu{
            id:btnMenu_
            MenuItem{text: "Cut"}
            MenuItem{text: "Copy"}
            MenuItem{text: "Paste"}
        }
    }

}
