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
        id:btn_
        text:qsTr( "abc")
        width: 300
        height: 200
//        anchors.centerIn: parent
//        highlighted:pressed
        contentItem: Label{
            text: btn_.text
            font: btn_.font
            horizontalAlignment:"AlignHCenter"
            verticalAlignment:"AlignVCenter"
        }
        background: Rectangle{
            implicitWidth: 100
            implicitHeight: 40
            opacity: enabled? 1.0:0.3
            border.color: btn_.pressed?"yellow":"#21be2b"
            color: btn_.pressed?"red":"blue"
            border.width: 2
            radius: 20
        }

        onCanceled: {
            console.log("cancel")
        }
    }
}
