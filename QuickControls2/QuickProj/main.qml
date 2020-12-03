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

    header:TabBar{
        id:bar_
        width: parent.width
        TabButton{text: qsTr("Ab")}
        TabButton{text: qsTr("Bb")}
        TabButton{text: qsTr("CC")}
    }

    StackLayout{
        anchors.fill: parent
        currentIndex: bar_.currentIndex
        Rectangle{anchors.fill: parent;color: "red"}
        Rectangle{anchors.fill: parent;color: "yellow"}
        Rectangle{anchors.fill: parent;color: "green"}
    }
}
