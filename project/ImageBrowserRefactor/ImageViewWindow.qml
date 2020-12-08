import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.2 as StdDlgs

ApplicationWindow{
    width: 800
    height: 600
    visible: true
    title: qsTr("ImageViewWindow_1")
    property alias actFileDlg:actFileOpen_
    property alias actAboutDlg:actAboutOpen_

    //背景
    background: Rectangle{
        gradient: Gradient{
            GradientStop{position: 0.0;color: "white"}
            GradientStop{position: 1.0;color: "blue"}
        }
    }

    //图像显示区
    Image {
        id: image_
        //充斥整个区域
        anchors.fill: parent
    }

    //file dialog
    StdDlgs.FileDialog{
        id:fileDlg_
        title: "the file Dlg"
        folder: shortcuts.documents
        nameFilters: ["imgType(*.jpg *,png)","All(*)"]
        onAccepted: image_.source = fileUrl
    }

    //About dialog
    Dialog{
        id:aboutDlg_
        title: "the About Dlg"
        width: 200
        height: 150
        anchors.centerIn:parent
        Label{
            text: qsTr("关于...")
        }
        standardButtons: Dialog.Ok
    }

    Action{
        id:actFileOpen_
        text: "ActFileDlg"
        onTriggered: showFileDlg()
    }

    Action{
        id:actAboutOpen_
        text: "ActAboutDlg"
        onTriggered: showAboutDlg()
    }

    //显示函数
    function showFileDlg(){
        fileDlg_.open()
    }
    function showAboutDlg(){
        aboutDlg_.open()
    }
}
