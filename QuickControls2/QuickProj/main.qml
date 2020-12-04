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

    FileDialog{
        id:fileDialog_
        title: "choose file"
        nameFilters: ["Img(*.jpg *.png)","All(*)"]
        onAccepted: console.log(fileDialog_.fileUrl)
        onRejected: console.log("Canceled")
    }

    Button{
        onClicked: fileDialog_.open()
    }
}
