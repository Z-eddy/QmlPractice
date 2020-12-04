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

    Rectangle{
        anchors.centerIn: parent
        width: 300
        height: 200
        Dialog{
            id:dialog_
            title: "theTitle"
            modal: true
            anchors.centerIn: parent
            width: 200
            height: 100
            standardButtons: Dialog.Ok|Dialog.Cancel
            onAccepted: console.log("accepted")
            onRejected: console.log("rejected")
        }
        MouseArea{
            anchors.fill: parent
            onClicked: dialog_.open()
        }
    }
}
