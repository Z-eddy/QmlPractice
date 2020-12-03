import QtQuick 2.12
import QtQuick.Controls 2.9
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

    Frame{
        anchors.fill: parent

        ColumnLayout{
            anchors.fill: parent
            CheckBox{text: qsTr("Ab")}
            CheckBox{text: qsTr("Cc")}
            CheckBox{text: qsTr("De")}
        }
    }
}
