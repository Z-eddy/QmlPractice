import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

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

    StackView{
        id:stack_
        anchors.fill: parent
        initialItem: Item{
            id:red_
            Rectangle{anchors.fill: parent;color: "red"}
        }
    }

    Rectangle{id:blue_;color: "blue"}
    Rectangle{id:green_;color: "green"}
    Rectangle{id:yellow_;color: "yellow"}
    Rectangle{id:orange_;color: "orange"}

    MouseArea{
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton|Qt.RightButton|Qt.MiddleButton
        onClicked: {
            if(mouse.button===Qt.LeftButton){
                stack_.push([blue_,green_,yellow_])
            }
            else if(mouse.button===Qt.RightButton){
                stack_.pop()
            }else{
                stack_.replace(orange_)
            }
        }
    }
}
