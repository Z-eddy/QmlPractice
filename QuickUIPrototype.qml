import QtQuick 2.12
import QtQuick.Window 2.12
//不能让.qml的文件与其所在文件夹重名！
import Button 1.0 as TempButton

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Text {
        id: theLabel
        text: qsTr("labelText")

        function moveTo(x,y){
            theLabel.x=x
            theLabel.y=y
        }
    }

    MouseArea{
        anchors.fill: parent
        onPressed:theLabel.moveTo(mouseX,mouseY)
    }
}
