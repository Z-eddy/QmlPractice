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

    header: Label{
        text: viewPages_.currentItem.title
        horizontalAlignment: "AlignHCenter"
    }

    SwipeView{
        id:viewPages_
        anchors.fill: parent
        Page{title: qsTr("aa")}
        Page{title: qsTr("Bb")}
        Page{title: qsTr("cc")}
    }

    footer: Label{
        text: "footer"+viewPages_.currentIndex
    }
}
