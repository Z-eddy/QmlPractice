import QtQuick 2.12
import QtQuick.Controls 1.4
//import Qt.labs.platform 1.0

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")


    menuBar: MenuBar{
        Menu{
            title: qsTr("&File")
            Action{text: qsTr("&New...")}
            Action{text: qsTr("&Open...")}
            MenuSeparator{}
            Action{text: qsTr("Save &As...")}
        }
        Menu{
            title: qsTr("&Edit")
            Action{text: qsTr("Cu&t...")}
            Action{text: qsTr("&Copy...")}
            MenuSeparator{}
            Action{text: qsTr("&Paste")}
        }
        Menu{
            title: qsTr("&Help")
            Action{text: qsTr("&About")}
        }
    }
}
