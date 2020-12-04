import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.3

ApplicationWindow {
    id:window_
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")

    Label{
        id:label_
        text: "hello world!"
        MouseArea{
            anchors.fill: parent
            onClicked: fontDialog_.open()
        }
    }

    FontDialog{
        id:fontDialog_
        title: "select font"
//        font:label_.font
        onAccepted: {label_.font=fontDialog_.font}
        onRejected: console.log("Canceled")
    }
}
