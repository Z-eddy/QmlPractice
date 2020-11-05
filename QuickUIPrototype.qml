import QtQuick 2.12
import QtQuick.Window 2.12
//不能让.qml的文件与其所在文件夹重名！
import Button 1.0 as TempButton

Window {
    width: 640
    height: 480
    visible: true
    color: "#aaffff"
    title: qsTr("Hello World")

    TempButton.TheButton{
        //属性别名
        buttonText: "aabbcc"
    }
}
