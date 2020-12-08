import QtQuick 2.12
import QtQuick.Controls 2.5

ImageViewWindow{
    header: ToolBar{
        Flow{
            ToolButton{ action:actFileDlg }
            ToolButton{ action:actAboutDlg }
        }
    }

    menuBar: MenuBar{
        Menu{
            title: qsTr("&File")
            modal: true
            Overlay.modal: Rectangle{color: "#00000000"}
            MenuItem{action: actFileDlg}
        }
        Menu{
            title: qsTr("&Help")
            modal:true
            Overlay.modal: Rectangle{color: "#00000000"}
            MenuItem{action:actAboutDlg}
        }
    }
}
