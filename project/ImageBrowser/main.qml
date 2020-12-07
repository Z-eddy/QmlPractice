import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3 as StandardDialogs

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Image Browser")

    //背景色
    background: Rectangle{
        gradient: Gradient{
            GradientStop{ position:0.0;color:"blue"}
            GradientStop{position: 1.0;color:"white"}
        }
    }

    //菜单栏
    menuBar: MenuBar{
        Menu{
            modal: true
            Overlay.modal: Rectangle{color: "#60cfdbe7"}
            title: qsTr("&File")
            MenuItem{action: actFileDlg_}
        }
        Menu{
            modal: true
            Overlay.modal: Rectangle{color: "#60cfdbe7"}
            title: qsTr("&Help")
            MenuItem{action:actAboutDlg_}
        }
    }

    //工具栏
    header: ToolBar{
        Flow{
            anchors.fill: parent
            ToolButton{
                text: qsTr("tool btn file")
                action: actFileDlg_
            }
            ToolButton{
                text: qsTr("tool btn About")
                action: actAboutDlg_
                contentItem: Label{
                    text: parent.text
                }
            }
        }
    }

    //图片显示区
    Image{
        id:image_
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }

    //文件对话框
    StandardDialogs.FileDialog{
        id:fileDlg_
        title: "选择Image"
        folder: shortcuts.documents
        nameFilters: ["Image Files(*.jpg *.png)","All Files(*)"]
        onAccepted: {
            image_.source=fileDlg_.fileUrl
        }
    }

    //About对话框
    Dialog{
        id:aboutDlg_
        title: "About"
        width: 300
        height: 200
        modal:true
        anchors.centerIn:parent
        Label{
            anchors.fill: parent
            text: qsTr("Img Viewer\nBased on QML")
            horizontalAlignment: "AlignHCenter"
        }
        standardButtons: Dialog.Ok
    }

    Action{
        id: actFileDlg_
        text: "ActFile"
        onTriggered: fileDlg_.open()
    }

    Action{
        id:actAboutDlg_
        text: "ActAbout"
        onTriggered: aboutDlg_.open()
    }
}
