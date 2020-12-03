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

    ScrollView{
        anchors.centerIn: parent
        //超出部分剪贴
        clip: true
        width:200
        height: 100
        //隐藏水平条
        ScrollBar.horizontal.policy:ScrollBar.AlwaysOff
        ListView{
            id:view_
            model: 20
            delegate: ItemDelegate{text: "Item "+index}
        }
    }
}
