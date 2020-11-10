import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:1024
    height:900
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Text {
        id: text_
        //注释信息的编写方式,下面的写法将会被录入.ts文件
        //:主要注释信息
        //~append 附加注释信息,第一个单词作为.ts文件xml的附加标识符
        text: qsTr("my %1 text","第二个参数用来消除相同文本歧义").arg(123)//可以用QString的arg方式插值
    }
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
