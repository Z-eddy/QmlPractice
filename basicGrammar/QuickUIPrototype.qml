import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    id:mainUI
    width:800
    height:600
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Grid{
        anchors{
            left: parent.left
            leftMargin: 6
            top: parent.top
            topMargin: 10
        }
        width: 400
        height: 300
        columns: 2

        Rectangle{
            id:topLeft_
            color: focus?"red":"green"
            width: 50
            height: 50
            focus: true

            KeyNavigation.right:topRight_
            KeyNavigation.down:bottomLeft_
        }
        Rectangle{
            id:topRight_
            color: focus?"red":"green"
            width: 50
            height: 50

            KeyNavigation.left:topLeft_
            KeyNavigation.down:bottomRight_
        }
        Rectangle{
            id:bottomLeft_
            color: focus?"red":"green"
            width: 50
            height: 50

            KeyNavigation.up:topLeft_
            KeyNavigation.right:bottomRight_
        }
        Rectangle{
            id:bottomRight_
            color: focus?"red":"green"
            width: 50
            height: 50

            KeyNavigation.left:bottomLeft_
            KeyNavigation.up:topRight_
        }
    }
}
