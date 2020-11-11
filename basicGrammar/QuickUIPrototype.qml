import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:1024
    height:900
    visible: true
//    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    FontLoader{
        id:local_
        name: "Courier"
    }
    FontLoader{
        id:webFont_
        source:"http://www.mysite.com/myfont.ttf"
    }

    Text {
        id: text0_
        font{pixelSize: 25}
        text: qsTr("textabcdefghijklmnopqrstuvwxyz0123456789")
        color: "#FF0000"
        //字体模式
        fontSizeMode: Text.Fit
        //字体
        font{family: local_.name}
    }
    Text {
        id: text1_
        font{pixelSize: 25}
        y:text0_.y+height+10
        text: qsTr("textabcdefghijklmnopqrstuvwxyz0123456789")
        color: "#FF0000"
        //字体模式
        fontSizeMode:Text.VerticalFit
        //字体
        font{family:webFont_.name}
    }
}
