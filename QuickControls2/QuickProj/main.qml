import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.0

ApplicationWindow {
    id:window_
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")

    ColorDialog{
        id:colorDialog_
        title: "color choose"
        onAccepted: {
            window_.color=color
        }
        onRejected: console.log("canceled")
    }

    Button{
        onClicked: colorDialog_.open()
    }
}
