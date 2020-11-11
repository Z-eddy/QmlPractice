import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:1024
    height:900
    visible: true
//    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Text {
        id: text1_
        //必须用富文本
        textFormat: Text.RichText
        //定义链接
        text:"See the <a href=\"http://qt-project.org\">Qt Project website</a>."
        //link指代上面的web地址
        onLinkActivated:console.log(link+" link actived")
    }
}
