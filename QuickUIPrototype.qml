import QtQuick 2.12
import QtQuick.Window 2.12
//不能让.qml的文件与其所在文件夹重名！
import Button 1.0 as TempButton

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    color: "#aaffff"
    //别名与其他属性重名时，覆盖其他属性,因为它最后才会声明
    property alias color:inerRect.color

    Rectangle{
        id:inerRect
        color: "#1234ff"
    }

    Component.onCompleted: {
        console.log(mainUI.color)
        mainUI.color="#001122"
        console.log(mainUI.color)
    }
}
