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

    ProgressBar{
        id:pBar_
        from: 0
        to: 200
        value: 35
        background: Rectangle{
            implicitWidth: 200
            implicitHeight: 20
            color: "yellow"
            radius: 3
        }
        contentItem: Item{
            implicitWidth:200
            implicitHeight:18;
            Rectangle{
                width: pBar_.visualPosition*parent.width
                height: parent.height
                radius: parent.height/2
                color: "green"
            }
        }
    }
}
