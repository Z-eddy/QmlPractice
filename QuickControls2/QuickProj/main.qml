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
        contentItem: Label{
            text: btn_.text
            font: btn_.font
            horizontalAlignment:"AlignHCenter"
            verticalAlignment:"AlignVCenter"
        }

        onCanceled: {
            console.log("cancel")
        }
    }
}
