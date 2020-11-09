import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:1024
    height:900
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
            width: 800
            height: 600
            anchors.centerIn: parent
        Image {
            id: img
            //加载网上的资源
            source: "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1049972604,1280002919&fm=26&gp=0.jpg"
            width: 600
            height: 400
            anchors.centerIn: parent
        }
    }
}
