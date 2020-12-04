import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.0

ApplicationWindow {
    id:window
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
        onClicked: drawer_.open()
    }

    Drawer{
        id:drawer_
        width: window.width*0.3
        height: window.height
        ColumnLayout{
            anchors.fill: parent
            CheckBox{text: qsTr("Aa")}
            CheckBox{text: qsTr("Bb")}
            CheckBox{text: qsTr("Cc")}
        }
    }
}
