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
    title: qsTr("Hello World")

    TempButton.TheButton{
        onActived:{
            console.log("act:"+xPos+"."+yPos)
        }
        onDeactived: {
            console.log("release")
        }
    }
}
