import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")

    Button{
        onClicked: popup_.open()
        anchors.bottom: parent.bottom
    }

//    Menu{
    Popup{
        id:popup_
        width: 300
        height: 200
        modal: true
        visible: true
        parent: Overlay.overlay
        x:Math.round((parent.width-width)/2)
        y:Math.round((parent.height-height)/2)

        Overlay.modal: Rectangle{
            color: "#aacfdbe7"
        }
    }
}
