import QtQuick 2.12
import QtQuick.Controls 2.12
//import QtQuick.Layouts 1.0
//import QtQuick.Dialogs 1.3

ApplicationWindow {
    id:window_
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")
    color: "yellow"

    Image {
        id: img_
        anchors.fill: parent
        //本地加载,默认阻塞,可以开启异步非阻塞
//        source: "file:///E:/picture/龙猫1.jpg"
        source: "http://i.stack.imgur.com/SGrFb.png"
        //限制图片大小
//        sourceSize.height: 100
//        sourceSize.width: 100

        onStatusChanged: {
            if(img_.status===Image.Ready){
                console.log("Ready")
            }else if(img_.status){
                console.log("Loading")
            }
        }
    }
}
