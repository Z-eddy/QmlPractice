import QtQuick 2.12
import QtQuick.Window 2.12
import UI 1.0 as TestUI
//不能让.qml的文件与其所在文件夹重名！
import Button 1.0 as TempButton

Window {
    width: 640
    height: 480
    visible: true
    color: "#aaffff"
    title: qsTr("Hello World")

    Row{
        Text {
            id: t0
            text: qsTr("text0")
            //使用属性点标记
            font.pixelSize: 22;font.bold: true
        }
        Text {
            id: t1
            text: qsTr("text1")
            //使用属性组标记
            font{pixelSize: 32;bold: true}
        }
    }
    TestUI.TestTextWidget{

    }
    TempButton.TheButton{

    }
}
