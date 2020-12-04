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

    Button{
        anchors.centerIn: parent
        width: 300
        height: 200
//        hoverEnabled: true

//        ToolTip.delay: 1000
//        ToolTip.timeout: 3000
        ToolTip.visible: hovered
        ToolTip.text: "the text"
//        ToolTip.x:
//        ToolTip.y:
    }
}
