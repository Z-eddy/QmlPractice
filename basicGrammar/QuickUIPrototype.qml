import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    id:mainUI
    width:800
    height:600
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
        color: "pink"
        width: 400
        height: 300
        Loader{
            anchors{
                fill: parent
                margins: 10
            }
//            anchors.centerIn: parent
            id:load_
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                load_.sourceComponent=rect_
            }
        }
        Component{
            id:rect_
            Rectangle{
                color: "green"
                width: 50
                height: 50
            }
        }
    }
}
