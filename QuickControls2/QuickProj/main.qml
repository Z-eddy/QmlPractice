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
            onClicked:msgDlg_.open()
        }
    }

    MessageDialog{
        id:msgDlg_
        title: "this Dlg"
        text: "the text"
        detailedText: "detail text"
        icon: "Information"
        standardButtons: StandardButton.Yes|StandardButton.Abort|StandardButton.Cancel
        onYes: console.log("yes")
        onRejected: console.log("Reject")
    }
}
