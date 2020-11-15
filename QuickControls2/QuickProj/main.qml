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

    /*
      设置了模态,不知道有什么用
    overlay.modal: Rectangle{
        color: "#8f28282a"
    }
    overlay.modeless: Rectangle{
        color: "#2f28282a"
    }
    */

    Button{
        id:btn_
        text: qsTr("Popup")
//        anchors.centerIn: parent
        onClicked:popup_.open()

        Popup{
            id:popup_
            parent: ApplicationWindow.overlay
            width: 100
            height: 150
            x:(parent.width-width)/2
            y:(parent.height-height)/2
        }
    }

    ScrollView {
//        anchors.fill: parent
        anchors.top:btn_.bottom
        width: ApplicationWindow.overlay.width
        height: ApplicationWindow.overlay.height

        ListView {
            id: listView
            width: parent.width
            model: 20
            delegate: ItemDelegate {
                text: "Item " + (index + 1)
                width: listView.width
            }
        }
    }
}
